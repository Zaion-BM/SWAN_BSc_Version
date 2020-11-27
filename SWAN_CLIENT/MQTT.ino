#include "MQTT.h"
#include <WiFi.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

const char* ssid = "Nori";
const char* password = "pAlacsinta88";
const char* mqtt_server = "192.168.0.202";

void callback(char* topic, byte* message, unsigned int length) {
    Serial.print("Message arrived on topic: ");
    Serial.print(topic);
    Serial.print(". Message: ");
    String messageTemp;
  
    for (int i = 0; i < length; i++) {
      Serial.print((char)message[i]);
      messageTemp += (char)message[i];
    }
    Serial.println();
    if( messageTemp == "banned") {
      Serial.print("I'm banned");
      Serial.println();
      banned = true;
      }
    if( messageTemp == "buzzer") {
      Serial.print("I'm lost");
      Serial.println();
      lost = true;
      }
  }

void MQTT_TASK(void *pvParameters){
  vTaskDelay(10);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
      vTaskDelay(500);
      Serial.print(".");
   }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  client.connect("SWAN1");
  client.subscribe("SWAN/recv");
  Serial.println("MQTT connected");

  char payload[512];

  if(xSemaphoreTake( measurementMutex, ( TickType_t ) 10 ) == pdTRUE){
    Serial.println("Publishing...");
   
    StaticJsonDocument<512> doc;
    
    doc["Client"] = serialNumber;
    doc["Battery_Voltage"] = Ubat;
    doc["status"] = irrigatonStatus;

    JsonArray temperature = doc.createNestedArray("temp");
    for(int i=0;i<5;i++){
      temperature.add(temp[i]);
    }

    JsonArray pres = doc.createNestedArray("pressure");
    for(int i=0;i<5;i++){
      pres.add(pressure[i]);
    }
    JsonArray U_mois = doc.createNestedArray("U_moisture");
    for(int i=0;i<5;i++){
      U_mois.add(U_Moisture[i]);
    }
      
    serializeJson(doc, payload);
    client.publish("SWAN/pub", payload);
    
    Serial.print(payload);
    Serial.println();

    xSemaphoreGive(measurementMutex);

    vTaskDelay(delayTime/2);
   
    vTaskResume(buzzer_TaskHandle);
  }
  while(1){vTaskDelay(delayTime);}
}
