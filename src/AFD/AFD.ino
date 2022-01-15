/***************************************************************************

 AFD Application Program
 
****************************************************************************/

#include "Arduino.h"
#include "PCF8574.h"


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

#define REVERSE_UNITS(u) ((NUM_UNITS - 1) - u)


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
  0b11111011 & 0b11101111 & 0b11011111 & 0b10111111 & 0b01111111, // A
  0b11111110 & 0b11111101 & 0b11110111 & 0b11101111 & 0b11011111 & 0b10111111 & 0b01111111, // B
  0b11111110 & 0b11011111 & 0b10111111, // C
  0b11111110 & 0b11111101 & 0b11111011 & 0b11110111, // d
  0b11111110 & 0b11110111 & 0b11011111 & 0b10111111 & 0b01111111, // E
  0b11110111 & 0b11011111 & 0b10111111 & 0b01111111, // F
  0b11111110 & 0b11111101 & 0b11011111 & 0b10111111, // G
  0b11111101 & 0b11111011 & 0b11110111 & 0b11101111 & 0b11011111 & 0b01111111, // H
  0b11111011, // I
  0b11111110 & 0b11111011, // J
  0b11111101 & 0b11101111 & 0b11011111, // K
  0b11111110 & 0b11011111, // L
  0b11111011 & 0b11101111 & 0b11011111 & 0b01111111, // M
  0b11111101 & 0b11111011 & 0b11011111 & 0b01111111, // N
  0b11111110 & 0b11111011 & 0b11011111 & 0b10111111, // O
  0b11101111 & 0b11011111 & 0b10111111 & 0b01111111, // P
  0b11111101 & 0b11101111 & 0b10111111 & 0b01111111, // q
  0b11111101 & 0b11101111 & 0b11011111 & 0b10111111, // R
  0b11111110 & 0b11111101 & 0b10111111 & 0b01111111, // S
  0b11111110 & 0b10111111, // T
  0b11111110 & 0b11111011 & 0b11011111, // U
  0b11101111 & 0b01111111, // v
  0b11111101 & 0b11111011 & 0b11110111 & 0b11011111, // W
  0b11111101 & 0b11110111 & 0b11101111 & 0b01111111, // 0
  0b11111110 & 0b11101111 & 0b01111111, // Y
  0b11111110 & 0b11110111 & 0b11101111 & 0b10111111 // Z
};

byte digitMap[DIGIT_MAP_SIZE] = {
  0b11111110 & 0b11111011 & 0b11011111 & 0b10111111, // 1
  0b11011111, // 0
  0b11111110 & 0b11110111 & 0b11101111 & 0b10111111, // 2
  0b11111110 & 0b11111101 & 0b11101111 & 0b10111111, // 3
  0b11111011 & 0b11101111 & 0b01111111, // 4
  0b11111110 & 0b11111101 & 0b10111111 & 0b01111111, // 5
  0b11111110 & 0b11111101 & 0b11110111 & 0b10111111 & 0b01111111, // 6
  0b11111011 & 0b10111111, // 7
  0b11111110 & 0b11111101 & 0b11110111 & 0b11101111 & 0b10111111 & 0b01111111, // 8
  0b11111011 & 0b11101111 & 0b10111111 & 0b01111111 // 9
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

  if (!isDigit(digit)) {
    if (VERBOSE) {
      Serial.println("Invalid Digit: " + String(digit));
    }
  } else {
    chr = digitMap[(digit - '0') % DIGIT_MAP_SIZE];
    digitalInput.p7 = bitRead(chr, 7);
    digitalInput.p6 = bitRead(chr, 6);
    digitalInput.p5 = bitRead(chr, 5);
    digitalInput.p4 = bitRead(chr, 4);
    digitalInput.p3 = bitRead(chr, 3);
    digitalInput.p2 = bitRead(chr, 2);
    digitalInput.p1 = bitRead(chr, 1);
    digitalInput.p0 = bitRead(chr, 0);

    afd[unit % NUM_UNITS].digitalWriteAll(digitalInput);
    if (VERBOSE) {
      Serial.print("writeDigit: 0x" +  String(chr, HEX) + "; ");
    }
  }
}


void writeChar(byte unit, byte character) { 
  byte chr;
  PCF8574::DigitalInput digitalInput;

  if (!isUpperCase(character)) {
    if (VERBOSE) {
      Serial.println("Invalid Character: " + String(character));
    }
  } else {
    chr = charMap[(character - 'A') % CHAR_MAP_SIZE];
    digitalInput.p7 = bitRead(chr, 7);
    digitalInput.p6 = bitRead(chr, 6);
    digitalInput.p5 = bitRead(chr, 5);
    digitalInput.p4 = bitRead(chr, 4);
    digitalInput.p3 = bitRead(chr, 3);
    digitalInput.p2 = bitRead(chr, 2);
    digitalInput.p1 = bitRead(chr, 1);
    digitalInput.p0 = bitRead(chr, 0);

    afd[unit % NUM_UNITS].digitalWriteAll(digitalInput);
    if (VERBOSE) {
      Serial.print("writeChar: 0x" +  String(chr, HEX) + "; ");
    }
  }
}

void writeUnits(const char *str) {
  int unit;
  byte chr;

  for (unit = 0; (unit < NUM_UNITS); unit++) {
    if (unit >= strlen(str)) {
      clearUnit(REVERSE_UNITS(unit));
    } else {
      chr = str[unit];
      if (chr == ' ') {
        clearUnit(REVERSE_UNITS(unit));
      } else if (isAlpha(chr)) {
        if (!isUpperCase(chr)) {
          chr -= 0x20;
        }
        writeChar(REVERSE_UNITS(unit), chr);
      } else if (isDigit(chr)) {
        writeDigit(REVERSE_UNITS(unit), chr);
      } else {
        clearUnit(REVERSE_UNITS(unit));
        if (VERBOSE) {
          Serial.print("Invalid character: " + String(chr) + "; ");
        }
      }
    }
  }
  if (VERBOSE) {
    Serial.println("Wrote: " + String(str));
  }
}

void loop() {
//  afdPrint(displayStr);
  writeUnits("ABCD");
  delay(1000);
  writeUnits("ABCD12");
  delay(1000);
  writeUnits("ABCDEFG");
  delay(1000);
  writeUnits("aBcD 1");
  delay(1000);
  writeUnits(" A b C");
  delay(1000);
};
