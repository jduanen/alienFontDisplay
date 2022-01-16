/***************************************************************************

 AFD Time and Date Display Application
 
****************************************************************************/

#include "Arduino.h"
#include "PCF8574.h"
#include "AFD.h"


#define VERBOSE         1


AFD::AFD afd;

void setup() {
  afd = AFD();
  if (VERBOSE) {
    Serial.println("Start");
  }
}


#define WAIT_TIME 3000

void loop() {
  afd.printStr(displayStr);
  displayStr = String("ABCDEF");
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
};
