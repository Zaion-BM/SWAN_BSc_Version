#include "ADC.h"

#define SQR 25

 float Vin= 0.0; //Power supply voltage [V]
 RTC_DATA_ATTR float U_Moisture[5]; //Moisture sensor voltage [V]
 float Ubat = 0.0; //battery voltage [V]

 int ADC1_CH0 = 36; //GPIO36, U_Moisture
 int ADC1_CH3 = 39; //GPIO39, Ubat
 int ADC1_CH6 = 34; //GPIO34, Vin

void ADC_TASK(void *pvParameters){

  const int freq = 1500000;  //Hz
  const int channel = 0;
  const int resolution = 2; //Resolution 8, 10, 12, 15
  const int dutycycle = 2; //50%

  //Take mutex
  xSemaphoreTake(measurementMutex, portMAX_DELAY); 

  ledcSetup(channel, freq, resolution);
  ledcAttachPin(SQR, channel);
  ledcWrite(channel, dutycycle);
  
  while(1){
    if(measurementCounter==5){//Cyclic index
      measurementCounter=0;
      }
     
    Serial.println();
    Serial.println("ADC_TASK begins");

    //Measure mmoisture sensor voltage
    U_Moisture[measurementCounter] = (float)( (analogRead(ADC1_CH0)*3.3) / 4095);

    //Measure battery voltage
    Ubat = (float)( (analogRead(ADC1_CH3)*3.3) / 4095);

    /*Serial logging*/
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

    //Increment measureindex
    while(doneMeasurement == false){vTaskDelay(100);}
    measurementCounter++;

    /*When 5 measurements are taken,
    resume irrigation, MQTT task and give mutex*/
    if(measurementCounter == 5 ){
      xSemaphoreGive(measurementMutex);
      vTaskResume(irrigation_TaskHandle);
      vTaskResume(MQTT_TaskHandle);
      };
      
    Serial.println("ADC_TASK ends");
    vTaskDelay(delayTime);
  }
}
