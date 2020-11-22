#include "Sleep.h"


void sleep_TASK(void *pvParameters){
  while(1){
    vTaskDelay(delayTime/10);
    Serial.println();
    Serial.println(F("SWAN Client enters deep sleep ..."));
    esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
    esp_deep_sleep_start();
  }
}
