#include <Adafruit_Sensor.h>
#include <Adafruit_BMP280.h>

#include "BMP280_task.h"

Adafruit_BMP280 bmp; // I2C

int device_address = 0x76;
float temp;
float pressure;


void BMP280_TASK(void *pvParameters){
    unsigned long delayTime = 60000;    //6*10*1000*1ms = 1min
    unsigned long retryTime = 300000;   //5*6*10*1000*1ms = 5min
    bool status;
    
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
    
    printValues();
    
    BMP280_Sleep(device_address);
    Serial.println("BME280 to Sleep mode...");
    
    Serial.println("BMP280_TASK ends");
    vTaskDelay(delayTime);
  }
}

void printValues() {
    Serial.print("Temperature = ");
    temp = bmp.readTemperature();
    Serial.print(temp);
    Serial.println(" *C");

    Serial.print("Pressure = ");
    pressure = bmp.readPressure() / 100.0F;
    Serial.print(pressure);
    Serial.println(" hPa");
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
