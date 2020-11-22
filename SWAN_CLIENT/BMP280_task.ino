#include <Adafruit_Sensor.h>
#include <Adafruit_BMP280.h>

#include "BMP280_task.h"

Adafruit_BMP280 bmp;
int device_address = 0x76;

RTC_DATA_ATTR float temp[5];
RTC_DATA_ATTR float pressure[5];


void BMP280_TASK(void *pvParameters){
    unsigned long retryTime = 300000;   //5*6*10*1000*1ms = 5min
    bool status;
    float avgTemp = 0.0;
    
    status = bmp.begin(device_address);  //I2C address can be 0x77 or 0x76
    
    if (!status) {
        Serial.println("Could not find a valid BMP280 sensor, check PCB connection!");
        while (1){
          vTaskDelay(retryTime);
          };
    }

    BMP280_Sleep(0x76);

    while(1) {
    Serial.println();
    Serial.println("BMP280_TASK begins");
    
    bmp.begin(device_address);
    Serial.println("BMP280 to Normal mode...");

    temp[measurementCounter] = bmp.readTemperature();
    pressure[measurementCounter] = bmp.readPressure() / 100.0F;

    for(int i=0;i<5;i++){
      avgTemp += temp[i];
     }
    avgTemp = avgTemp / 5;
    if( (avgTemp - 5.0)< 0.01 ){frozen = true;} 
    
    printValues();
    
    BMP280_Sleep(device_address);
    Serial.println("BME280 to Sleep mode...");

    Serial.println("BMP280_TASK ends");
    vTaskDelay(delayTime);
  }
}

void printValues() {
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
  
  // BMP280 Register 0xF4 (control measurement register) sets the device mode, specifically bits 1,0
  // The bit positions are called 'mode[1:0]'. See datasheet Table 25 and Paragraph 3.3 for more detail.
  // Mode[1:0]  Mode
  //    00      'Sleep'  mode
  //  01 / 10   'Forced' mode, use either '01' or '10'
  //    11      'Normal' mode
  
  Wire.beginTransmission(device_address);
  Wire.write((uint8_t)0xF4);       // Select Control Measurement Register
  Wire.write((uint8_t)0b00000000); // Send '00' for Sleep mode
  Wire.endTransmission();
}
