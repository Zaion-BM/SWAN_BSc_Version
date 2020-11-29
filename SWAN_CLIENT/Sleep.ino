#include "Sleep.h"

void sleep_TASK(void *pvParameters){
  while(1){
    vTaskDelay(100);//yield
    Serial.println();
    Serial.println(F("SWAN Client enters deep sleep ..."));
    //Enable and configure wakeup cause
    esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
    //Go to deep sleep on both cores
    esp_deep_sleep_start();
  }
}
