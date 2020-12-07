#include "Buzzer.h"

#define BUZZER 33

void buzzer_TASK(void *pvParameters){
    const int freq = 4000;  //Hz
    const int channel = 1;
    const int resolution = 2; //Resolution 8, 10, 12, 15
    const int dutycycle = 2; //50%
  
    pinMode(BUZZER, OUTPUT); //Select pinmode
    vTaskDelay(1000); //yield

    Serial.println("Buzzer task starts.");
    while(lost){ //If lost, than generate squarewave (4k Hz)
          ledcSetup(channel, freq, resolution);
          ledcAttachPin(BUZZER, channel);
          ledcWrite(channel, dutycycle);
         vTaskDelay(1);
      }
    while(1){
      vTaskResume(sleep_TaskHandle); //Resume sleepTask
      Serial.println("Buzzer task ends.");
      vTaskDelay(delayTime*2);
     }
 }
