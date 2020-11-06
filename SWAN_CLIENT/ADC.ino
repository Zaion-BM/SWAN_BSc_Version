#include "ADC.h"

 float Vin = 0.0;
 float U_Moisture = 0.0;
 float Ubat = 0.0;

 int ADC1_CH0 = 36; //GPIO36, U_Moisture
 int ADC1_CH3 = 39; //GPIO39, Ubat
 int ADC1_CH6 = 34; //GPIO34, Vin


void ADC_TASK(void *pvParameters){
  unsigned long delayTime = 2000;    //6*10*1000*1ms = 1min

  while(1){
    Serial.println();
    Serial.println("ADC_TASK begins");
  
    U_Moisture = (float)( analogRead(ADC1_CH0) / 4095);
    Ubat = (float)( analogRead(ADC1_CH3) / 4095);
    Vin = (float)( analogRead(ADC1_CH6) / 4095);

    Serial.print("Voltage of soil moisture sensor: ");
    Serial.print(U_Moisture);
    Serial.println(" V");

  
    Serial.print("Battery voltage: ");
    Serial.print(Ubat);
    Serial.println(" V");

    Serial.print("PSU voltage: ");
    Serial.print(Vin);
    Serial.println(" V");
  

    Serial.println("ADC_TASK ends");
    vTaskDelay(delayTime);
  }
}
