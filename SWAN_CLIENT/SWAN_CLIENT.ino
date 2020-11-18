#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

#define uS_TO_S_FACTOR 1000000  /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP  10        /* Time ESP32 will go to sleep (in seconds) */

RTC_DATA_ATTR int bootCount = 0;

void Sleep_TASK(void *pvParameters);

// the setup function runs once when you press reset or power the board
void setup() {
  setCpuFrequencyMhz(80);
  
  if(bootCount == 0 || bootCount == 2){
    bootCount = 1;  
  
  // initialize serial communication at 115200 bits per second:
  Serial.begin(115200);
  
 xTaskCreatePinnedToCore(
    BMP280_TASK
    ,  "BMP280Task"   // A name just for humans
    ,  2048  // This stack size can be checked & adjusted by reading the Stack Highwater
    ,  NULL
    ,  2  // Priority, with 3 (configMAX_PRIORITIES - 1) being the highest, and 0 being the lowest.
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE);

  xTaskCreatePinnedToCore(
    ADC_TASK
    ,  "ADC_TASK"
    ,  1024  // Stack size
    ,  NULL
    ,  2  // Priority
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE); 

   xTaskCreatePinnedToCore(
    Sleep_TASK
    ,  "Sleep_TASK"
    ,  1024  // Stack size
    ,  NULL
    ,  3  // Priority
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE);

   xTaskCreatePinnedToCore(
    DAC_TASK
    ,  "DAC_TASK"
    ,  1024  // Stack size
    ,  NULL
    ,  1  // Priority
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE); 

   xTaskCreatePinnedToCore(
    MQTT_TASK
    ,  "MQTTTask"   
    ,  5120 // 
    ,  NULL
    ,  2  //
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE);
  }
  else{
    esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
    bootCount++;
    esp_deep_sleep_start();
    }

  // Now the task scheduler, which takes over control of scheduling individual tasks, is automatically started.
}

void loop(){
}

void Sleep_TASK(void *pvParameters){
  while(1){
    vTaskDelay(1000);
    Serial.println();
    Serial.println(F("SWAN Client enters deep sleep ..."));
    esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
    esp_deep_sleep_start();
  }
}
