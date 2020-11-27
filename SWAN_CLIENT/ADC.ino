#include "ADC.h"

 float Vin= 0.0;
 RTC_DATA_ATTR float U_Moisture[5];
 float Ubat = 0.0;

 int ADC1_CH0 = 36; //GPIO36, U_Moisture
 int ADC1_CH3 = 39; //GPIO39, Ubat
 int ADC1_CH6 = 34; //GPIO34, Vin

void ADC_TASK(void *pvParameters){

  xSemaphoreTake(measurementMutex, portMAX_DELAY); 
  
  while(1){
    if(measurementCounter==5){
      measurementCounter=0;
      }
    
    dacWrite(26, 127);
    digitalWrite(2,LOW);
    vTaskDelay(500);
    
    Serial.println();
    Serial.println("ADC_TASK begins");
  
    U_Moisture[measurementCounter] = (float)( analogRead(ADC1_CH0) / 4095);
    
    Ubat = (float)( analogRead(ADC1_CH3) / 4095);
    Vin = (float)( analogRead(ADC1_CH6) / 4095);
    
    digitalWrite(2,HIGH);
    
    Serial.print("Voltage of soil moisture sensor: ");
    for(int i=0; i<5;i++){
      Serial.print(U_Moisture[i]);
      Serial.print(" ");
    }
    Serial.print(" V, ");
    
    Serial.print("Battery voltage: ");
    Serial.print(Ubat);
    Serial.print(" V, ");

    Serial.print("PSU voltage: ");
    Serial.print(Vin);
    Serial.println(" V");
    
    measurementCounter++;
    if(measurementCounter == 5 ){
      xSemaphoreGive(measurementMutex);
      vTaskResume(MQTT_TaskHandle);
      vTaskResume(irrigation_TaskHandle);
      };
      
    Serial.println("ADC_TASK ends");
    vTaskDelay(delayTime);
  }
}
