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
#define APP_VERSION         "1.2.0"
#define REPORT_SCHEMA       "scrollDelay:d,pause:d,display:s,rssi:d"
#define TOPIC_PREFIX        "/displays/afd"
#define MQTT_SERVER         "192.168.166.113"
#define MQTT_PORT           1883


SensorNet sn(APP_NAME, APP_VERSION, REPORT_SCHEMA);

AFD afd = AFD();

// Callback function header
callback myCallback;

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

void myCallback(char* topic, byte* payload, unsigned int length) {
  String respMsg;
  char msgType = SensorNet::RESPONSE;
  SensorNet::callbackMessage cbMsg = sn.baseCallback(topic, payload, length);

  if (cbMsg.handled == true) {
    println("Callback message handled by baseCallback");
    // N.B. you can do other stuff in addition to what's done in the base hander here
  } else {
    if (cbMsg.cmd.equalsIgnoreCase("pause")) {
      int pause;
      if (cbMsg.val != NULL) {
        pause = cbMsg.val.toInt();
        if (pause < 0) {
          println("Error: pause value must be positive, using default value");
          pause = DEF_PAUSE;
        }
        afd.setPause(pause);
      }
      respMsg = "pause=" + String(afd.getPause());
    } else if (cbMsg.cmd.equalsIgnoreCase("scrollDelay")) {
      int scrollDelay;
      if (cbMsg.val != NULL) {
        scrollDelay = cbMsg.val.toInt();
        if (scrollDelay < 0) {
          println("Error: scrollDelay value must be positive, using default value");
          scrollDelay = DEF_SCROLL_DELAY;
        }
        afd.setScrollDelay(scrollDelay);
      }
      respMsg = "scrollDelay=" + String(afd.getScrollDelay());
    } else if (cbMsg.cmd.equalsIgnoreCase("display")) {
      if (cbMsg.val != NULL) {
        afd.displayStr = String(cbMsg.val);
        afd.displayStr.toUpperCase();
      }
      respMsg = "display=" + afd.displayStr;
    } else {
      respMsg = "ERROR: unknown command (" + cbMsg.cmd + ")";
      msgType = SensorNet::ERROR;
    }
    println("Response Message: " + respMsg);
    sn.mqttPub(msgType, respMsg);
  }
}

void setup() {
  sn.serialStart(&Serial, 9600, true);
  delay(500);
  println(APP_NAME);

  sn.wifiStart(WLAN_SSID, WLAN_PASS);
  println("WIFI");

  sn.mqttSetup(MQTT_SERVER, MQTT_PORT, TOPIC_PREFIX, myCallback);
  println("MQTT");
}

#define WAIT_TIME 3000

unsigned int indx = 0;

#define NUM_STRS  10

void loop() {
  String msg;
  unsigned long now = millis();
  unsigned long deltaT = now - sn.lastReport;

  sn.mqttRun();

  if (deltaT >= sn.reportInterval) {
    msg = String(afd.getPause()) + "," + String(afd.getScrollDelay()) + "," + afd.displayStr + "," + String(sn.wifiState().rssi);

    sn.mqttPub(SensorNet::DATA, msg);
    println("Status Msg: " + msg);
    sn.lastReport = now;
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
