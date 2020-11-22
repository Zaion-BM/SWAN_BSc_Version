#include "Irrigation.h"

void irrigation_TASK(void *pvParameters){
    const byte resetPulse = 18;
    const byte setPulse = 19;
    pinMode(resetPulse, OUTPUT);
    pinMode(setPulse, OUTPUT);

    while(1){
        if(frozen || banned) {
          digitalWrite(setPulse, LOW);
          digitalWrite(resetPulse, HIGH);
          vTaskDelay(delayTime);
         }
        else{
          digitalWrite(resetPulse, LOW);
          digitalWrite(setPulse, HIGH);
          vTaskDelay(delayTime);
          }
      
      }
  }
