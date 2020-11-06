#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

#ifndef LED_BUILTIN
#define LED_BUILTIN 13
#endif

#define uS_TO_S_FACTOR 1000000  /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP  10        /* Time ESP32 will go to sleep (in seconds) */

// the setup function runs once when you press reset or power the board
void setup() {

  setCpuFrequencyMhz(80);
  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
  
  // initialize serial communication at 115200 bits per second:
  Serial.begin(115200);
  
  // Now set up two tasks to run independently.
  xTaskCreatePinnedToCore(
    BMP280_TASK
    ,  "TaskI2C"   // A name just for humans
    ,  1024  // This stack size can be checked & adjusted by reading the Stack Highwater
    ,  NULL
    ,  1  // Priority, with 3 (configMAX_PRIORITIES - 1) being the highest, and 0 being the lowest.
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE);


  xTaskCreatePinnedToCore(
    ADC_TASK
    ,  "ADC_TASK"
    ,  1024  // Stack size
    ,  NULL
    ,  1  // Priority
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE);


  // Now the task scheduler, which takes over control of scheduling individual tasks, is automatically started.
}

void loop(){
  vTaskDelay(1000);
  Serial.println();
  Serial.println(F("SWAN Client enters deep sleep ..."));
  esp_deep_sleep_start();
}
