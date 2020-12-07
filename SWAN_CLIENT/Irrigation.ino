#include "Irrigation.h"

void irrigation_TASK(void *pvParameters){
    const byte resetPulse = 18; //GPIO connected to optocoupler
    const byte setPulse = 19; //GPIO connected to optocoupler
    pinMode(resetPulse, OUTPUT); //Set pinmode
    pinMode(setPulse, OUTPUT);  //Set pinmode
    float limit = 1.8;
    float avgVoltage = 0.0;

    Serial.println("Irrigation task starts.");

    while(1){
        if(frozen || banned) {//Turn off valve
          digitalWrite(setPulse, LOW);
          digitalWrite(resetPulse, HIGH);
          irrigatonStatus = 0;
          Serial.println("Irrigation task end(OFF).");
          vTaskDelay(delayTime);
         }
        else{
          avgVoltage = ((U_Moisture[0]+U_Moisture[1]+U_Moisture[2]+U_Moisture[3]+U_Moisture[4])/5);
          //Turn on valve if average sensor voltage is under limit 
          if((avgVoltage - limit)>0.01){
            digitalWrite(resetPulse, LOW);
            digitalWrite(setPulse, HIGH);
            irrigatonStatus = 1;
            Serial.println("Irrigation task end(ON).");
            vTaskDelay(delayTime);
          }
          else{//Turn off valve if average sensor voltage is above limit
              digitalWrite(setPulse, LOW);
              digitalWrite(resetPulse, HIGH);
              irrigatonStatus = 0;
              Serial.println("Irrigation task end(OFF).");
              vTaskDelay(delayTime);
            } 
          }    
      }
  }
