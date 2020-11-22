#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

#define uS_TO_S_FACTOR 1000000  /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP  30        /* Time ESP32 will go to sleep beetwen every 5 measurements (in seconds) */

#include <WiFi.h>
#include <PubSubClient.h>

RTC_DATA_ATTR int bootCount = 0;
RTC_DATA_ATTR int measurementCounter = 0;
unsigned long delayTime = 10000;    //6*10*1000*1ms = 1min
unsigned int serialNumber;
bool banned = false;
bool frozen = false;
bool lost = false;

WiFiClient espClient;
PubSubClient client(espClient);

TaskHandle_t bmp280_TaskHandle = NULL;
TaskHandle_t adc_TaskHandle = NULL;
TaskHandle_t sleep_TaskHandle = NULL;
TaskHandle_t buzzer_TaskHandle = NULL;
TaskHandle_t irrigation_TaskHandle = NULL;
TaskHandle_t MQTT_TaskHandle = NULL;

void setup() {
 setCpuFrequencyMhz(80);
  
 if(bootCount == 0 || bootCount == 10){
    bootCount = 1; 
   
    Serial.begin(115200);
  
    xTaskCreatePinnedToCore(
      BMP280_TASK
      ,  "BMP280Task"   
      ,  2048  
      ,  NULL
      ,  3
      ,  &bmp280_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
      ADC_TASK
      ,  "ADC_TASK"
      ,  1024  
      ,  NULL
      ,  3  
      ,  &adc_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
      sleep_TASK
      ,  "SleepTASK"
      ,  1024  
      ,  NULL
      ,  2  
      ,  &sleep_TaskHandle 
      ,  ARDUINO_RUNNING_CORE); 
    vTaskSuspend(sleep_TaskHandle);

    xTaskCreatePinnedToCore(
      buzzer_TASK
      ,  "BuzzerTask"   
      ,  1024  
      ,  NULL
      ,  1  
      ,  &buzzer_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);
    vTaskSuspend(buzzer_TaskHandle);

    xTaskCreatePinnedToCore(
      irrigation_TASK
      ,  "IrrigationTask"   
      ,  1024  
      ,  NULL
      ,  1  
      ,  &irrigation_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);
    vTaskSuspend(irrigation_TaskHandle);

    xTaskCreatePinnedToCore(
      MQTT_TASK
      ,  "MQTTTask"   
      ,  5120  
      ,  NULL
      ,  2  
      ,  &MQTT_TaskHandle 
      ,  ARDUINO_RUNNING_CORE);
    vTaskSuspend(MQTT_TaskHandle);
  }
  
  else{
    esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP/10 * uS_TO_S_FACTOR);
    bootCount++;
    esp_deep_sleep_start();
    }
}

void loop(){
  client.loop();
}
