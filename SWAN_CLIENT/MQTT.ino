#include "MQTT.h"
#include <WiFi.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

/*Credential for wifi and mqtt broker IP*/
const char* ssid = "Nori";
const char* password = "pAlacsinta88";
const char* mqtt_server = "192.168.0.202";

// Callback function called when MQTT message is received
void callback(char* topic, byte* message, unsigned int length) {
    Serial.print("Message arrived on topic: ");
    Serial.print(topic);
    Serial.print(". Message: ");
    String messageTemp;
    //Process  and log message
    for (int i = 0; i < length; i++) {
      Serial.print((char)message[i]);
      messageTemp += (char)message[i];
    }
    Serial.println();

    //Set and log associated variables
    if( messageTemp == "banned") {
      Serial.print("I'm banned");
      Serial.println();
      banned = true;
      }
    if( messageTemp == "enabled") {
      Serial.print("I'm enabled");
      Serial.println();
      banned = false;
      }
    if( messageTemp == "lost") {
      Serial.print("I'm lost");
      Serial.println();
      lost = true;
      }
    if( messageTemp == "found") {
      Serial.print("I'm found");
      Serial.println();
      lost = false;
      }            
  }

void MQTT_TASK(void *pvParameters){
  vTaskDelay(10); //yield
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  //Start wifi connection
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
      //If not connected retry every 0.5s
      vTaskDelay(500);
      Serial.print(".");
   }

  /*Log wifi information*/
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  /*Set up connection with MQTT broker*/
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  client.connect("SWAN1");
  client.subscribe("SWAN/recv");
  Serial.println("MQTT connected");

  char payload[512]; //Buffer array

  //Send messages only after mutex is taken
  if(xSemaphoreTake( measurementMutex, ( TickType_t ) 10 ) == pdTRUE){
    Serial.println("Publishing...");

    //"Creating JSON"
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

    //Generate string from JSON
    serializeJson(doc, payload);
    //Publish payload to /pub topic
    client.publish("SWAN/pub", payload);

    //UART logging
    Serial.print(payload);
    Serial.println();

    //Give mutex
    xSemaphoreGive(measurementMutex);

    //yield
    vTaskDelay(delayTime/2);

    //Resume buzzerTask
    vTaskResume(buzzer_TaskHandle);
  }
  while(1){vTaskDelay(delayTime);}//yield
}
