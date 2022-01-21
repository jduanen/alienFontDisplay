/***************************************************************************
 *
 * AFD Time and Date Display Application
 *
 * Uses SensorNet MQTT and displays what is published on its topic
 *
 ***************************************************************************/

#include <Arduino.h>
#include <PCF8574.h>
#include "SensorNet.h"
#include "wifi.h"
#include "AFD.h"


#define VERBOSE             1
#define MAX_STR_LEN         32
#define APP_NAME            "AFD"
#define APP_VERSION         "1.0.0"
#define REPORT_SCHEMA       "maxStrLen:d,scrollDelay:d,rssi:d"
#define TOPIC_PREFIX        "/displays/afd"
#define DEF_REPORT_INTERVAL 60000  // one report every minute
#define MQTT_SERVER        "192.168.166.113"
#define MQTT_PORT           1883
#define MAX_CMD_LEN         16
#define MAX_VAL_LEN         16


unsigned long lastReport = 0;
unsigned int reportInterval = DEF_REPORT_INTERVAL;


SensorNet sn(APP_NAME, APP_VERSION, REPORT_SCHEMA);

AFD afd = AFD();

// Callback function header
void callback(char* topic, byte* payload, unsigned int length);

// Callback function
void callback(char* topic, byte* payload, unsigned int length) {
  // In order to republish this payload, a copy must be made
  // as the orignal payload buffer will be overwritten whilst
  // constructing the PUBLISH packet.
  Serial.println("CALLBACK: ");
}

/*
void callback(char* topic, byte* payload, unsigned int length) {
  byte *cmdPtr = payload;
  byte *valPtr = NULL;
  String top, cmd, val, msg;

  sn.consolePrintln("CALLBACK");

  payload[length] = '\0';
  for (int i = 0; i < length; i++) {
    if (payload[i] == '=') {
      cmdPtr[i] = '\0';
      valPtr = &payload[i + 1];
    }
  }
  top = String(topic);
  cmd = String((char *)cmdPtr);
  val = String((char *)valPtr);

  msg = top + ", " + cmd + ", " + val;
  sn.consolePrintln(msg);
  sn.mqttPub(SensorNet::RESPONSE, msg);

  String msg;
  if (cmd.equals("RSSI")) {
    SensorNet::WIFI_STATE wifiState = sn.wifiState();
    msg = "RSSI=" + String(wifiState.rssi);
    sn.consolePrintln(msg);
    sn.mqttPub(SensorNet::RESPONSE, msg);
  } else if (cmd.equals("rate")) {
    if (val != NULL) {
      sn.consolePrintln("Set rate to " + val);
      reportInterval = val.toInt();
    }
    msg = "rate=" + String(reportInterval);
    sn.consolePrintln(msg);
    sn.mqttPub(SensorNet::RESPONSE, msg);
  } else if (cmd.equals("version")) {
    msg = "Version=" + String(APP_VERSION);
    sn.consolePrintln(msg);
    sn.mqttPub(SensorNet::RESPONSE, msg);
  } else if (cmd.equals("precision")) {
    uint8_t precision;
    if (val != NULL) {
      precision = val.toInt();
      if ((precision < 9) || (precision > 12)) {
        sn.consolePrintln("ERROR: Invalid precision value: " + val);
      } else {
        sn.consolePrintln("Set precision to: " + val);
        sensors.setResolution(ambientThermometer, precision);
        sensors.setResolution(waterThermometer, precision);
      }
    }
    uint8_t ambPrec = sensors.getResolution(ambientThermometer);
    uint8_t watPrec = sensors.getResolution(waterThermometer);
    if (ambPrec != watPrec) {
      msg = "ERROR: precision mismatch: " + String(ambPrec) + ", " + String(watPrec);
      sn.consolePrintln(msg);
      sn.mqttPub(SensorNet::ERROR, msg);
    } else {
      precision = watPrec;
    }
    msg = "precision=" + String(precision);
    sn.consolePrintln(msg);
    sn.mqttPub(SensorNet::RESPONSE, msg);
  } else if (cmd.equals("reset")) {
    sn.consolePrintln("Resetting");
    sn.systemReset();
  } else {
    msg = "ERROR: unknown command (" + cmd + ")";
    sn.consolePrintln(msg);
    sn.mqttPub(SensorNet::ERROR, msg);
  }
}
*/

void setup() {
  sn.serialStart(&Serial, 9600, true);
  delay(500);
  sn.consolePrintln(APP_NAME);

  sn.wifiStart(WLAN_SSID, WLAN_PASS);
  sn.consolePrintln("WIFI");

  sn.mqttSetup(MQTT_SERVER, MQTT_PORT, TOPIC_PREFIX, callback);
  sn.consolePrintln("MQTT");
}

#define WAIT_TIME 3000

unsigned int indx = 0;

#define NUM_STRS  10

void loop() {
  String displayStrs[NUM_STRS] = {"ABCDEFGHI", "EFGHIJKLM", "IJKLMNOPQ", "MNOPQRSTU", "QRSTUVWXY", "UVWXYZ", "", "012345678", "34567890", ""};
  String msg;
  unsigned long now = millis();
  unsigned long deltaT = now - lastReport;

  sn.mqttRun();

  if (deltaT >= reportInterval) {
    msg = String(afd.getMaxStrLen()) + "," + String(afd.getScrollDelay()) + "," + String(sn.wifiState().rssi);

    sn.mqttPub(SensorNet::DATA, msg);
    sn.consolePrintln("Status Msg: " + msg);
    lastReport = now;
  }

  afd.printStr(displayStrs[indx]);
  indx++;
  if (indx >= NUM_STRS) {
    indx = 0;
    delay(WAIT_TIME);

    if (VERBOSE) {
      Serial.println("Reset");
    }
  }
  if (VERBOSE) {
    Serial.println("Loop");
  }
};
