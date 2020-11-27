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
          Serial.println("Irrigation task end(OFF).");
          vTaskDelay(delayTime);
         }
        else{ 
          if(((U_Moisture[0]+U_Moisture[1]+U_Moisture[2]+U_Moisture[3]+U_Moisture[4])/5) > 1.5 ){
            digitalWrite(resetPulse, LOW);
            digitalWrite(setPulse, HIGH);
            irrigatonStatus = 1;
            Serial.println("Irrigation task end(ON).");
            vTaskDelay(delayTime);
          }
          else{
              digitalWrite(setPulse, LOW);
              digitalWrite(resetPulse, HIGH);
              irrigatonStatus = 0;
              Serial.println("Irrigation task end(OFF).");
              vTaskDelay(delayTime);
            } 
          }    
      }
  }
