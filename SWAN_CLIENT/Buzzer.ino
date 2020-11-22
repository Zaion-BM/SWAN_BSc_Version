#include "Buzzer.h"

void buzzer_TASK(void *pvParameters){
    const byte buzzerInputGPIO = 33;
    pinMode(buzzerInputGPIO, OUTPUT);

    while(lost){
         digitalWrite(buzzerInputGPIO, HIGH);
         vTaskDelay(1);
         digitalWrite(buzzerInputGPIO, LOW);
         vTaskDelay(1);
      }
    while(1){
      vTaskResume(sleep_TaskHandle);
      vTaskDelay(delayTime*2);
     }
 }
