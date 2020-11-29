#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

#define uS_TO_S_FACTOR 1000000 //us to s conversion
#define TIME_TO_SLEEP  900 //sleep time in s


/*Includes*/
#include <WiFi.h>
#include <PubSubClient.h>
#include <EEPROM.h>
#include "getSerialNumber.h"

#define EEPROM_SIZE 1

RTC_DATA_ATTR int measurementCounter = 0; //index for measurements
unsigned long delayTime = 10000;    //10*1000*1ms = 10sec
unsigned int serialNumber; //serial number of client
bool banned = false;  // if true client won't actuate
bool frozen = false;  // if true client won't actuate
bool lost = false; // if true client runs buzzer 
int irrigatonStatus; // 

/*Wifi and MQTT client instances*/
WiFiClient espClient;
PubSubClient client(espClient);

/*FreeRTOS task handles*/
TaskHandle_t bmp280_TaskHandle = NULL;
TaskHandle_t adc_TaskHandle = NULL;
TaskHandle_t sleep_TaskHandle = NULL;
TaskHandle_t buzzer_TaskHandle = NULL;
TaskHandle_t irrigation_TaskHandle = NULL;
TaskHandle_t MQTT_TaskHandle = NULL;

/*Mutex*/
SemaphoreHandle_t measurementMutex;

void setup() { //Run once after every reset
  setCpuFrequencyMhz(80); //Slows CPU to save power
  
  Serial.begin(115200); //UART for debugging

  //Reading non-volatile serialnumber from EEPROM
  EEPROM.begin(EEPROM_SIZE);
  serialNumber = EEPROM.read(0);

  //Acquire serialnumber if it is not set
  if(serialNumber == 255){ 
     getSerialNumber();
     serialNumber = EEPROM.read(0);
     Serial.print(" SerialNumber: ");
     Serial.println(serialNumber);
     delay(10);
     ESP.restart();
   }

   //Create mutex to block MQTT task while measurements are made
   measurementMutex = xSemaphoreCreateMutex();

  //Create task
   xTaskCreatePinnedToCore(
      BMP280_TASK
      ,  "BMP280Task"   
      ,  2048  
      ,  NULL
      ,  3
      ,  &bmp280_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

  //Create task
   xTaskCreatePinnedToCore(
      ADC_TASK
      ,  "ADC_TASK"
      ,  1024  
      ,  NULL
      ,  3  
      ,  &adc_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

  //Create task
   xTaskCreatePinnedToCore(
      sleep_TASK
      ,  "SleepTASK"
      ,  1024  
      ,  NULL
      ,  2  
      ,  &sleep_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);
      
  //Suspend task immediately 
   vTaskSuspend(sleep_TaskHandle);

  //Create task
   xTaskCreatePinnedToCore(
      buzzer_TASK
      ,  "BuzzerTask"   
      ,  1024  
      ,  NULL
      ,  2  
      ,  &buzzer_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

  //Suspend task immediately    
   vTaskSuspend(buzzer_TaskHandle);

  //Create task
   xTaskCreatePinnedToCore(
      irrigation_TASK
      ,  "IrrigationTask"   
      ,  1024  
      ,  NULL
      ,  1  
      ,  &irrigation_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

  //Suspend task immediately  
   vTaskSuspend(irrigation_TaskHandle);

  //Create task
   xTaskCreatePinnedToCore(
      MQTT_TASK
      ,  "MQTTTask"   
      ,  5120  
      ,  NULL
      ,  2  
      ,  &MQTT_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

  //Suspend task immediately 
   vTaskSuspend(MQTT_TaskHandle);
}

void loop(){//Mapped to idle task
  client.loop();
}
