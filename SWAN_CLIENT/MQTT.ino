#include <WiFi.h>
#include <PubSubClient.h>


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
  }




void MQTT_TASK(void *pvParameters){
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

  while(1){
    vTaskDelay(1000);
   /* client.publish("SWAN/pub", "ESP32 alive...");
    Serial.println("Publishing...");*/
  }
}
