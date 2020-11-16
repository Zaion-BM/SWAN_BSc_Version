#include <WiFi.h>
#include <PubSubClient.h>


  const char* ssid = "Otthon_lent";
  const char* password = "19670208";
  const char* mqtt_server = "test.mosquitto.org";


  void setup_wifi() {
    vTaskDelay(10);
    // We start by connecting to a WiFi network
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
  }

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
  
  WiFiClient espClient;
  PubSubClient client(espClient);

  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);

  while(1){
    vTaskDelay(1000);
  }
}
