/***************************************************************************

 AFD Time and Date Display Application
 
****************************************************************************/

#include "Arduino.h"
#include "PCF8574.h"
#include "AFD.h"


#define VERBOSE         1


AFD afd = AFD();

void setup() {
  if (VERBOSE) {
    Serial.begin(9600);
    delay(500);
    Serial.println("Start");
  }
}


#define WAIT_TIME 3000

void loop() {
  String displayStr;

  displayStr = String("ABCDEF");
  afd.printStr(displayStr);
  delay(WAIT_TIME);
  displayStr = String("HELLO WORLD AGAIN");
  afd.printStr(displayStr);
  delay(WAIT_TIME);
  displayStr = String("1 2 3");
  afd.printStr(displayStr);
  delay(WAIT_TIME);
  displayStr = String("MONICA");
  afd.printStr(displayStr);
  delay(WAIT_TIME);
  displayStr = String("BYE");
  afd.printStr(displayStr);
  delay(WAIT_TIME);

  if (VERBOSE) {
    Serial.println("Reset");
  }
};
