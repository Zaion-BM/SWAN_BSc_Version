#include "Buzzer.h"

void buzzer_TASK(void *pvParameters){
    const byte buzzerInputGPIO = 33; //GPIO connected to buzzer
    pinMode(buzzerInputGPIO, OUTPUT); //Select pinmode
    vTaskDelay(1000); //yield

    Serial.println("Buzzer task starts.");
    while(lost){ //If lost, than generate squarewave (~400 Hz)
         digitalWrite(buzzerInputGPIO, HIGH);
         vTaskDelay(1);
         digitalWrite(buzzerInputGPIO, LOW);
         vTaskDelay(1);
      }
    while(1){
      vTaskResume(sleep_TaskHandle); //Resume sleepTask
      Serial.println("Buzzer task ends.");
      vTaskDelay(delayTime*2);
     }
 }
