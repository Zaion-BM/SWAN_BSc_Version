#include "ADC.h"

 RTC_DATA_ATTR int cnt = 0;
 float Vin= 0.0;
 RTC_DATA_ATTR float U_Moisture[5];
 float Ubat = 0.0;

 int ADC1_CH0 = 36; //GPIO36, U_Moisture
 int ADC1_CH3 = 39; //GPIO39, Ubat
 int ADC1_CH6 = 34; //GPIO34, Vin


void ADC_TASK(void *pvParameters){
  unsigned long delayTime = 60000;    //6*10*1000*1ms = 1min

  while(1){
    Serial.println(F("1.65V reference voltage is set."));
    dacWrite(26, 127);
    digitalWrite(2,LOW);
    vTaskDelay(500);
    
    Serial.println();
    Serial.println("ADC_TASK begins");
  
    U_Moisture[cnt] = (float)( analogRead(ADC1_CH0) / 4095);
    
    if(cnt==4){cnt=0;}
    else{cnt++;}
    
    Ubat = (float)( analogRead(ADC1_CH3) / 4095);
    Vin = (float)( analogRead(ADC1_CH6) / 4095);
    
    digitalWrite(2,HIGH);
    
    Serial.print("Voltage of soil moisture sensor: ");
    for(int i=0; i<5;i++){
      Serial.print(U_Moisture[i]);
      Serial.print(" ");
    }
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
