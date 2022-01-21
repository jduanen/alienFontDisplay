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
#define APP_NAME            "AFD"
#define APP_VERSION         "1.0.0"
#define REPORT_SCHEMA       "scrollDelay:d,pause:d,rssi:d,display:s"
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

void print(String s) {
  if (VERBOSE) {
    sn.consolePrint(s);
  }
}

void println(String s) {
  if (VERBOSE) {
    sn.consolePrintln(s);
  }
}

void callback(char* topic, byte* payload, unsigned int length) {
  byte *cmdPtr = payload;
  byte *valPtr = NULL;
  String top, cmd, val, msg;
  char msgType;

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
  println("CALLBACK: " + msg);

  msgType = SensorNet::RESPONSE;
  if (cmd.equals("RSSI")) {
    SensorNet::WIFI_STATE wifiState = sn.wifiState();
    msg = "RSSI=" + String(wifiState.rssi);
  } else if (cmd.equals("rate")) {
    if (val != NULL) {
      reportInterval = val.toInt();
      if (reportInterval < 0) {
        println("Error: reportInterval must be positive, using default value");
        reportInterval = DEF_REPORT_INTERVAL;
      }
      println("Set rate to " + val);
    }
    msg = "rate=" + String(reportInterval);
  } else if (cmd.equals("version")) {
    msg = "Version=" + String(APP_VERSION);
  } else if (cmd.equals("pause")) {
    int pause;
    if (val != NULL) {
      pause = val.toInt();
      if (pause < 0) {
        println("Error: pause value must be positive, using default value");
        pause = DEF_PAUSE;
      }
      afd.setPause(pause);
    }
    msg = "pause=" + String(afd.getPause());
  } else if (cmd.equals("scrollDelay")) {
    int scrollDelay;
    if (val != NULL) {
      scrollDelay = val.toInt();
      if (scrollDelay < 0) {
        println("Error: scrollDelay value must be positive, using default value");
        scrollDelay = DEF_SCROLL_DELAY;
      }
      afd.setScrollDelay(scrollDelay);
    }
    msg = "scrollDelay=" + String(afd.getScrollDelay());
  } else if (cmd.equals("display")) {
    if (val != NULL) {
      afd.displayStr = String(val);
    }
    msg = "display=" + afd.displayStr;
  } else if (cmd.equals("reset")) {
    println("Resetting");
    sn.systemReset();
    msg = "Reset";
  } else {
    msg = "ERROR: unknown command (" + cmd + ")";
    msgType = SensorNet::ERROR;
  }
  println(msg);
  sn.mqttPub(msgType, msg);
}

void setup() {
  sn.serialStart(&Serial, 9600, true);
  delay(500);
  println(APP_NAME);

  sn.wifiStart(WLAN_SSID, WLAN_PASS);
  println("WIFI");

  sn.mqttSetup(MQTT_SERVER, MQTT_PORT, TOPIC_PREFIX, callback);
  println("MQTT");
}

#define WAIT_TIME 3000

unsigned int indx = 0;

#define NUM_STRS  10

void loop() {
  String msg;
  unsigned long now = millis();
  unsigned long deltaT = now - lastReport;

  sn.mqttRun();

  if (deltaT >= reportInterval) {
    msg = String(afd.getPause()) + "," + String(afd.getScrollDelay()) + "," + String(sn.wifiState().rssi) + afd.displayStr;

    sn.mqttPub(SensorNet::DATA, msg);
    println("Status Msg: " + msg);
    lastReport = now;
  }

  afd.printStr(afd.displayStr);
  indx++;
  if (indx >= NUM_STRS) {
    indx = 0;
    delay(WAIT_TIME);

    println("Reset");
  }
  println("Loop");
};
