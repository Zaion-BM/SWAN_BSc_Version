#include "Irrigation.h"

void irrigation_TASK(void *pvParameters){
    const byte resetPulse = 18;
    const byte setPulse = 19;
    pinMode(resetPulse, OUTPUT);
    pinMode(setPulse, OUTPUT);

    Serial.println("Irrigation task starts.");

    while(1){
        if(frozen || banned) {
          digitalWrite(setPulse, LOW);
          digitalWrite(resetPulse, HIGH);
          irrigatonStatus = 0;
          Serial.println("Irrigation task end(FF).");
          vTaskDelay(delayTime);
         }
        else{
          digitalWrite(resetPulse, LOW);
          digitalWrite(setPulse, HIGH);
          irrigatonStatus = 1;
          Serial.println("Irrigation task end(ON).");
          vTaskDelay(delayTime);
          }     
      }
  }
