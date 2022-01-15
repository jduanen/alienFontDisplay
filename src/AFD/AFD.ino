/***************************************************************************

 AFD Application Program
 
****************************************************************************/

#include "Arduino.h"
#include "PCF8574.h"


#define TEST            1
#define VERBOSE         1
#define STARTUP_STRING  "HELLO WORLD"

#define I2C_BASE_ADDR   0x20
#define READ_ADDR       0x4F
#define WRITE_ADDR      0x4E
#define NUM_UNITS       6
#define NUM_SEGMENTS    8
#define CHAR_MAP_SIZE   26
#define DIGIT_MAP_SIZE  10
#define MAX_STRING_LEN  32


int indx = 0;
byte stringBuffer[2][MAX_STRING_LEN] = {};
byte displayStr[MAX_STRING_LEN] = STARTUP_STRING;

PCF8574 afd[NUM_UNITS] = {
  PCF8574(I2C_BASE_ADDR),
  PCF8574(I2C_BASE_ADDR + 1),
  PCF8574(I2C_BASE_ADDR + 2),
  PCF8574(I2C_BASE_ADDR + 3),
  PCF8574(I2C_BASE_ADDR + 4),
  PCF8574(I2C_BASE_ADDR + 5)
};

byte charMap[CHAR_MAP_SIZE] = {
  0b11111011 + 0b11101111 + 0b11011111 + 0b10111111 + 0b01111111, // A
  0b11111110 + 0b11111101 + 0b11110111 + 0b11101111 + 0b11011111 + 0b10111111 + 0b01111111, // B
  0b11111110 + 0b11011111 + 0b10111111, // C
  0b11111110 + 0b11111101 + 0b11111011 + 0b11110111, // d
  0b11111110 + 0b11110111 + 0b11011111 + 0b10111111 + 0b01111111, // E
  0b11110111 + 0b11011111 + 0b10111111 + 0b01111111, // F
  0b11111110 + 0b11111101 + 0b11011111 + 0b10111111, // G
  0b11111101 + 0b11111011 + 0b11110111 + 0b11101111 + 0b11011111 + 0b01111111, // H
  0b11111011, // I
  0b11111110 + 0b11111011, // J
  0b11111101 + 0b11101111 + 0b11011111, // K
  0b11111110 + 0b11011111, // L
  0b11111011 + 0b11101111 + 0b11011111 + 0b01111111, // M
  0b11111101 + 0b11111011 + 0b11011111 + 0b01111111, // N
  0b11111110 + 0b11111011 + 0b11011111 + 0b10111111, // O
  0b11101111 + 0b11011111 + 0b10111111 + 0b01111111, // P
  0b11111101 + 0b11101111 + 0b10111111 + 0b01111111, // q
  0b11111101 + 0b11101111 + 0b11011111 + 0b10111111, // R
  0b11111110 + 0b11111101 + 0b10111111 + 0b01111111, // S
  0b11111110 + 0b10111111, // T
  0b11111110 + 0b11111011 + 0b11011111, // U
  0b11101111 + 0b01111111, // v
  0b11111101 + 0b11111011 + 0b11110111 + 0b11011111, // W
  0b11111101 + 0b11110111 + 0b11101111 + 0b01111111, // 0
  0b11111110 + 0b11101111 + 0b01111111, // Y
  0b11111110 + 0b11110111 + 0b11101111 + 0b10111111 // Z
};

byte digitMap[DIGIT_MAP_SIZE] = {
  0b11111110 + 0b11111011 + 0b11011111 + 0b10111111, // 1
  0b11011111, // 0
  0b11111110 + 0b11110111 + 0b11101111 + 0b10111111, // 2
  0b11111110 + 0b11111101 + 0b11101111 + 0b10111111, // 3
  0b11111011 + 0b11101111 + 0b01111111, // 4
  0b11111110 + 0b11111101 + 0b10111111 + 0b01111111, // 5
  0b11111110 + 0b11111101 + 0b11110111 + 0b10111111 + 0b01111111, // 6
  0b11111011 + 0b10111111, // 7
  0b11111110 + 0b11111101 + 0b11110111 + 0b11101111 + 0b10111111 + 0b01111111, // 8
  0b11111011 + 0b11101111 + 0b10111111 + 0b01111111 // 9
};


void clearUnit(byte unit) {
  byte seg;
  for (seg = 0; seg < NUM_SEGMENTS; seg++) {
    afd[unit].digitalWrite(seg, HIGH);
  }
}


void clearAllUnits() {
  byte unit;
  for (unit = 0; unit < NUM_UNITS; unit++) {
    clearUnit(unit);
  }
}


void setup() { 
  byte unit;

  Serial.begin(9600);
  delay(500);

  for (unit = 0; unit < NUM_UNITS; unit++) {
    afd[unit].pinMode(P0, OUTPUT, HIGH);
    afd[unit].pinMode(P1, OUTPUT, HIGH);
    afd[unit].pinMode(P2, OUTPUT, HIGH);
    afd[unit].pinMode(P3, OUTPUT, HIGH);
    afd[unit].pinMode(P4, OUTPUT, HIGH);
    afd[unit].pinMode(P5, OUTPUT, HIGH);
    afd[unit].pinMode(P6, OUTPUT, HIGH);
    afd[unit].pinMode(P7, OUTPUT, HIGH);
    afd[unit].begin();
  }
  clearAllUnits();

  if (VERBOSE) {
    Serial.println("Start");
  }
}


void writeDigit(byte unit, byte digit) { 
  byte chr;
  PCF8574::DigitalInput digitalInput;

  chr = digitMap[digit % DIGIT_MAP_SIZE];
  digitalInput.p7 = ((chr >> 7) & 0x01);
  digitalInput.p6 = ((chr >> 6) & 0x01);
  digitalInput.p5 = ((chr >> 5) & 0x01);
  digitalInput.p4 = ((chr >> 4) & 0x01);
  digitalInput.p3 = ((chr >> 3) & 0x01);
  digitalInput.p2 = ((chr >> 2) & 0x01);
  digitalInput.p1 = ((chr >> 1) & 0x01);
  digitalInput.p0 = ((chr >> 0) & 0x01);

  afd[unit % NUM_UNITS].digitalWriteAll(digitalInput);
  if (VERBOSE) {
    Serial.print("writeDigit: 0x" +  String(chr, HEX) + "; ");
  }
}


void writeChar(byte unit, byte character) { 
  byte chr;
  PCF8574::DigitalInput digitalInput;

  chr = charMap[character % CHAR_MAP_SIZE];
  digitalInput.p7 = ((chr >> 7) & 0x01);
  digitalInput.p6 = ((chr >> 6) & 0x01);
  digitalInput.p5 = ((chr >> 5) & 0x01);
  digitalInput.p4 = ((chr >> 4) & 0x01);
  digitalInput.p3 = ((chr >> 3) & 0x01);
  digitalInput.p2 = ((chr >> 2) & 0x01);
  digitalInput.p1 = ((chr >> 1) & 0x01);
  digitalInput.p0 = ((chr >> 0) & 0x01);

  afd[unit % NUM_UNITS].digitalWriteAll(digitalInput);
  if (VERBOSE) {
    Serial.print("writeChar: 0x" +  String(chr, HEX) + "; ");
  }
}

void writeUnits(byte str[]) {
  int unit;
  byte c;

  for (unit = 0; (unit < NUM_UNITS); unit++) {
    if (unit >= strlen(str)) {
      clearUnit(unit);
    } else {
      c = str[unit];
      if (c == ' ') {
        clearUnit(unit);
      } else if (isAlpha(c)) {
        if (!isUpperCase(c)) {
          c += 0x20;
        }
        writeChar(c, unit);
      } else if (isDigit(c)) {
        writeDigit(c, unit);
      } else {
        clearUnit(unit);
        if (VERBOSE) {
          Serial.println("Invalid character: " + c);
        }
      }
    }
  }
}

void loop() {
//  afdPrint(displayStr);
  writeUnits("TEST");
  delay(1000);
  writeUnits("TEST12");
  delay(1000);
  writeUnits("TESTING");
  delay(1000);
  writeUnits("TeSt 1");
  delay(1000);
  writeUnits(" A B C");
  delay(1000);
};
