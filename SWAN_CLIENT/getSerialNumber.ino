#include "getSerialNumber.h"

//Wait for broker sending serialnumber back
bool wait = true;

//Pseudorandom number to identify with broker without serialnumber
int rndNum;

// Callback function called when MQTT message is received
void serialcallback(char* topic, byte* message, unsigned int length) {
    Serial.print("Message arrived on topic: ");
    Serial.print(topic);
    Serial.print(". Message: ");
    String messageTemp;

    //Process  and log message
    for (int i = 0; i < length; i++) {
      Serial.print((char)message[i]);
      messageTemp += (char)message[i];
    }

    //Process message string into random number and serialnumber
    int numberTemp = messageTemp.toInt();
    if(rndNum == numberTemp){//If sent and received random number is identical get serialnumber
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

  //Start wifi connection
  WiFi.begin(ssid, password);
  
  //If not connected wait
  while (WiFi.status() != WL_CONNECTED);

  /*Set up connection with MQTT broker*/
  client.setServer(mqtt_server, 1883);
  client.setCallback(serialcallback);
  client.connect("SWAN");
  client.subscribe("SWAN/recv");
  Serial.println("MQTT connected");
  
  char payload[512];
  rndNum = esp_random();//generate random number
  sprintf(payload,  "%d", rndNum); //convert int to string

  //Publish random number
  client.publish("SWAN/serial", payload);

  while(wait){client.loop();}
  return;
}
