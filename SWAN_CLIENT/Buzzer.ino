#include "Buzzer.h"

void buzzer_TASK(void *pvParameters){
    const byte buzzerInputGPIO = 33;
    pinMode(buzzerInputGPIO, OUTPUT);
    vTaskDelay(1000);

    Serial.println("Buzzer task starts.");
    while(lost){ //If lost activate buzzer sound (~400 Hz)
         digitalWrite(buzzerInputGPIO, HIGH);
         vTaskDelay(1);
         digitalWrite(buzzerInputGPIO, LOW);
         vTaskDelay(1);
      }
    while(1){
      vTaskResume(sleep_TaskHandle);
      Serial.println("Buzzer task ends.");
      vTaskDelay(delayTime*2);
     }
 }
