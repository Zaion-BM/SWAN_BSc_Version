#include "ADC.h"

 float Vin= 0.0;
 RTC_DATA_ATTR float U_Moisture[5];
 float Ubat = 0.0;

 int ADC1_CH0 = 36; //GPIO36, U_Moisture
 int ADC1_CH3 = 39; //GPIO39, Ubat
 int ADC1_CH6 = 34; //GPIO34, Vin


void ADC_TASK(void *pvParameters){
  
  while(1){
    if(measurementCounter==5){measurementCounter=0;}
    
    dacWrite(26, 127);
    digitalWrite(2,LOW);
    vTaskDelay(500);
    
    Serial.println();
    Serial.println("ADC_TASK begins");
  
    U_Moisture[measurementCounter] = (float)( analogRead(ADC1_CH0) / 4095);
    
    Ubat = (float)( analogRead(ADC1_CH3) / 4095);
    Vin = (float)( analogRead(ADC1_CH6) / 4095);

    if(Vin>0.0 && Ubat > 3.299){digitalWrite(13,HIGH);}
    
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
    if(measurementCounter == 5 ){vTaskResume(MQTT_TaskHandle);};
      

    Serial.println("ADC_TASK ends");
    vTaskDelay(delayTime);
  }
}
