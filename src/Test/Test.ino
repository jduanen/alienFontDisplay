/***************************************************************************

 AFD Test Program
 
****************************************************************************/

#include "Arduino.h"
#include "PCF8574.h"



#define TEST            'B'
#define VERBOSE         1

#define I2C_BASE_ADDR   0x20
#define READ_ADDR       0x4F
#define WRITE_ADDR      0x4E
#define NUM_UNITS       6
#define NUM_SEGMENTS    8
#define CHAR_MAP_SIZE   26
#define DIGIT_MAP_SIZE  10


unsigned char c = 0;

PCF8574 afd[NUM_UNITS] = {
  PCF8574(I2C_BASE_ADDR),
  PCF8574(I2C_BASE_ADDR + 1),
  PCF8574(I2C_BASE_ADDR + 2),
  PCF8574(I2C_BASE_ADDR + 3),
  PCF8574(I2C_BASE_ADDR + 4),
  PCF8574(I2C_BASE_ADDR + 5)
};

unsigned char charMap[CHAR_MAP_SIZE] = {
  0b00000100 + 0b00010000 + 0b00100000 + 0b01000000 + 0b10000000, // A
  0b00000001 + 0b00000010 + 0b00001000 + 0b00010000 + 0b00100000 + 0b01000000 + 0b10000000, // B
  0b00000001 + 0b00100000 + 0b01000000, // C
  0b00000001 + 0b00000010 + 0b00000100 + 0b00001000, // d
  0b00000001 + 0b00001000 + 0b00100000 + 0b01000000 + 0b10000000, // E
  0b00001000 + 0b00100000 + 0b01000000 + 0b10000000, // F
  0b00000001 + 0b00000010 + 0b00100000 + 0b01000000, // G
  0b00000010 + 0b00000100 + 0b00001000 + 0b00010000 + 0b00100000 + 0b10000000, // H
  0b00000100, // I
  0b00000001 + 0b00000100, // J
  0b00000010 + 0b00010000 + 0b00100000, // K
  0b00000001 + 0b00100000, // L
  0b00000100 + 0b00010000 + 0b00100000 + 0b10000000, // M
  0b00000010 + 0b00000100 + 0b00100000 + 0b10000000, // N
  0b00000001 + 0b00000100 + 0b00100000 + 0b01000000, // O
  0b00010000 + 0b00100000 + 0b01000000 + 0b10000000, // P
  0b00000010 + 0b00010000 + 0b01000000 + 0b10000000, // q
  0b00000010 + 0b00010000 + 0b00100000 + 0b01000000, // R
  0b00000001 + 0b00000010 + 0b01000000 + 0b10000000, // S
  0b00000001 + 0b01000000, // T
  0b00000001 + 0b00000100 + 0b00100000, // U
  0b00010000 + 0b10000000, // v
  0b00000010 + 0b00000100 + 0b00001000 + 0b00100000, // W
  0b00000010 + 0b00001000 + 0b00010000 + 0b10000000, // X
  0b00000001 + 0b00010000 + 0b10000000, // Y
  0b00000001 + 0b00001000 + 0b00010000 + 0b01000000 // Z
};

unsigned char digitMap[DIGIT_MAP_SIZE] = {
  0b00000001 + 0b00000100 + 0b00100000 + 0b01000000, // 0
  0b00100000, // 1
  0b00000001 + 0b00001000 + 0b00010000 + 0b01000000, // 2
  0b00000001 + 0b00000010 + 0b00010000 + 0b01000000, // 3
  0b00000100 + 0b00010000 + 0b10000000, // 4
  0b00000001 + 0b00000010 + 0b01000000 + 0b10000000, // 5
  0b00000001 + 0b00000010 + 0b00001000 + 0b01000000 + 0b10000000, // 6
  0b00000100 + 0b01000000, // 7
  0b00000001 + 0b00000010 + 0b00001000 + 0b00010000 + 0b01000000 + 0b10000000, // 8
  0b00000100 + 0b00010000 + 0b01000000 + 0b10000000 // 9
};


void clearUnit(unsigned char unit) {
  unsigned char seg;
  for (seg = 0; seg < NUM_SEGMENTS; seg++) {
    afd[unit].digitalWrite(seg, HIGH);
  }
}


void clearAllUnits() {
  unsigned char unit;
  for (unit = 0; unit < NUM_UNITS; unit++) {
    clearUnit(unit);
  }
}


void setup() { 
  unsigned char unit;

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


void writeDigit(unsigned char unit, unsigned char digit) { 
  unsigned char chr;
  PCF8574::DigitalInput digitalInput;

  chr = digitMap[digit % DIGIT_MAP_SIZE];
  digitalInput.p7 = !((chr >> 7) & 0x01);
  digitalInput.p6 = !((chr >> 6) & 0x01);
  digitalInput.p5 = !((chr >> 5) & 0x01);
  digitalInput.p4 = !((chr >> 4) & 0x01);
  digitalInput.p3 = !((chr >> 3) & 0x01);
  digitalInput.p2 = !((chr >> 2) & 0x01);
  digitalInput.p1 = !((chr >> 1) & 0x01);
  digitalInput.p0 = !((chr >> 0) & 0x01);

  afd[unit % NUM_UNITS].digitalWriteAll(digitalInput);
  if (VERBOSE) {
    Serial.print("writeDigit: 0x" +  String(chr, HEX) + "; ");
  }
}


void writeChar(unsigned char unit, unsigned char character) { 
  unsigned char chr;
  PCF8574::DigitalInput digitalInput;

  chr = charMap[character % CHAR_MAP_SIZE];
  digitalInput.p7 = !((chr >> 7) & 0x01);
  digitalInput.p6 = !((chr >> 6) & 0x01);
  digitalInput.p5 = !((chr >> 5) & 0x01);
  digitalInput.p4 = !((chr >> 4) & 0x01);
  digitalInput.p3 = !((chr >> 3) & 0x01);
  digitalInput.p2 = !((chr >> 2) & 0x01);
  digitalInput.p1 = !((chr >> 1) & 0x01);
  digitalInput.p0 = !((chr >> 0) & 0x01);

  afd[unit % NUM_UNITS].digitalWriteAll(digitalInput);
  if (VERBOSE) {
    Serial.print("writeChar: 0x" +  String(chr, HEX) + "; ");
  }
}


void loop() {
  unsigned char unit;
  unsigned char seg;

  switch (TEST) {
    case 'A':
      // cycle through digits and characters
      for (unit = 0; unit < NUM_UNITS; unit++) {
        if (VERBOSE) {
          Serial.print("Unit: " + String(unit) + "; ");
        }
        if (c < DIGIT_MAP_SIZE) {
          writeDigit(unit, ((c + unit) % DIGIT_MAP_SIZE));
          if (VERBOSE) {
            Serial.println("Digit: " + String((c + unit) % DIGIT_MAP_SIZE));
          }
        } else {
          writeChar(unit, ((c - DIGIT_MAP_SIZE + unit) % CHAR_MAP_SIZE));
          if (VERBOSE) {
            Serial.println("Char: " + String((c - DIGIT_MAP_SIZE + unit) % CHAR_MAP_SIZE));
          }
        }
        c++;
        if (c >= (DIGIT_MAP_SIZE + CHAR_MAP_SIZE)) {
          c = 0;
          if (VERBOSE) {
            Serial.println("Reset");
          }
        }
      }
      if (VERBOSE) {
        Serial.println("C: " + String(c));
        Serial.println("-------------");
      }
      break;
    case 'B':
      // cycle through all segments on all units
      for (seg = 0; seg < NUM_SEGMENTS; seg++) {
        if (VERBOSE) {
          Serial.print("Segment: " + String(seg) + "; Unit Low: ");
        }
        for (unit = 0; unit < NUM_UNITS; unit++) {
          afd[unit].digitalWrite(seg, LOW);
          if (VERBOSE) {
            Serial.print(String(unit) + ", ");
          }
        }
        delay(1000);
        if (VERBOSE) {
          Serial.print("; Unit High: ");
        }
        for (unit = 0; unit < NUM_UNITS; unit++) {
          afd[unit].digitalWrite(seg, HIGH);
          if (VERBOSE) {
            Serial.print(String(unit) + ", ");
          }
        }
        if (VERBOSE) {
          Serial.println(".");
        }
      }
      break;
    case 'C':
      // enable a single segment on each unit
      unsigned char s;
      for (seg = 0; seg < NUM_SEGMENTS; seg++) {
        for (unit = 0; unit < NUM_UNITS; unit++) {
          s = (seg + unit) % NUM_SEGMENTS;
          afd[unit].digitalWrite(s, LOW);
          if (VERBOSE) {
            Serial.println("Unit: " + String(unit) + ", Segment: " + String(s));
          }
        }
        delay(1000);
        clearAllUnits();
        if (VERBOSE) {
          Serial.println("Clear all");
        }
      }
      break;
    case 'D':
      // enable all segments, then disable all segments, on unit #0
      for (seg = 0; seg < NUM_SEGMENTS; seg++) {
        afd[0].digitalWrite(seg, LOW);
        delay(1000);
        afd[0].digitalWrite(seg, HIGH);
        delay(1000);
        if (VERBOSE) {
          Serial.println("Segment: " + String(seg));
        }
      }
      break;
    default:
      if (VERBOSE) {
        Serial.println("Invalid Test");
      }
      break;
  }

  delay(1000);
};
