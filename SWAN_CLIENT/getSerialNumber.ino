#include "getSerialNumber.h"

bool wait = true;

int rndNum;

void serialcallback(char* topic, byte* message, unsigned int length) {
    Serial.print("Message arrived on topic: ");
    Serial.print(topic);
    Serial.print(". Message: ");
    String messageTemp;
  
    for (int i = 0; i < length; i++) {
      Serial.print((char)message[i]);
      messageTemp += (char)message[i];
    }

    int numberTemp = messageTemp.toInt();
    if(rndNum == numberTemp){
      int separatorIndex = messageTemp.indexOf(",");
      numberTemp = messageTemp.substring(separatorIndex+1).toInt();
      if(numberTemp != 0){
        EEPROM.write(0, numberTemp);
        EEPROM.commit();
        }
      wait = false;
      Serial.println();
    }
    Serial.println();
}

void getSerialNumber(){
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED);

  client.setServer(mqtt_server, 1883);
  client.setCallback(serialcallback);
  client.connect("SWAN");
  client.subscribe("SWAN/recv");
  Serial.println("MQTT connected");
  
  char payload[512];
  rndNum = esp_random();
  sprintf(payload,  "%d", rndNum);

  client.publish("SWAN/serial", payload);

  while(wait){client.loop();}
  return;
}
