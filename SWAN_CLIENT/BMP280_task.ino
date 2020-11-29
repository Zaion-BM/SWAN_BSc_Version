#include <Adafruit_Sensor.h>
#include <Adafruit_BMP280.h>

#include "BMP280_task.h"

Adafruit_BMP280 bmp; //variable for sensor
int device_address = 0x76; //I2C address

RTC_DATA_ATTR float temp[5]; //Temperature values [°C]
RTC_DATA_ATTR float pressure[5]; //Pressure values [hPa]


void BMP280_TASK(void *pvParameters){
    unsigned long retryTime = 300000;   //5*6*10*1000*1ms = 5min
    bool status; //I2C device status
    float avgTemp; //Average temperature [°C]
     
    status = bmp.begin(device_address);  //Start I2C communication
    
    if (!status) {
        Serial.println("Could not find sensor!");
        while (1){//Periodically attempt to find sensor
          vTaskDelay(retryTime);
          };
    }

    //Sleep to save power
    BMP280_Sleep(0x76);

    while(1) {
    Serial.println();
    Serial.println("BMP280_TASK begins");
    
    bmp.begin(device_address);
    Serial.println("BMP280 to Normal mode...");

    if(measurementCounter <5){//Read measurements in normal mode
       temp[measurementCounter] = bmp.readTemperature();
       pressure[measurementCounter] = bmp.readPressure() / 100.0F;
      }

    for(int i=0;i<5;i++){
      avgTemp += temp[i]; //Calculate average temperature
     }
    avgTemp = avgTemp / 5;

    //If temperature is under 5°C, ambient temperature can be below 0°C
    if( (avgTemp - 5.0)< 0.01 ){frozen = true;} 
    
    printValues();

    //Sleep to save power
    BMP280_Sleep(device_address);
    Serial.println("BME280 to Sleep mode...");

    Serial.println("BMP280_TASK ends");
    vTaskDelay(delayTime);
  }
}

void printValues() {//UART logging
    Serial.print("Temperature:  ");
    for(int i=0; i<5;i++){
      Serial.print(temp[i]);
      Serial.print(" *C ");
    }
    Serial.print(", ");

    Serial.print("Pressure:  ");
    for(int i=0; i<5;i++){
      Serial.print(pressure[i]);
      Serial.print(" hPa ");
    }
    Serial.println();
}

void BMP280_Sleep(int device_address) {
  // Mode[1:0]  Mode
  //    00      'Sleep'  mode
  //  01 / 10   'Forced' mode, use either '01' or '10'
  //    11      'Normal' mode
  
  Wire.beginTransmission(device_address);
  Wire.write((uint8_t)0xF4);       
  Wire.write((uint8_t)0b00000000);
  Wire.endTransmission();
}
