/***************************************************************************

 AFD Test Program
 
****************************************************************************/

#include "Arduino.h"
#include "PCF8574.h"


#define VERBOSE   1
#define I2C_ADDR        0x27 /* 0x20 */
#define READ_ADDR       0x4F
#define WRITE_ADDR      0x4E
#define NUM_CHARS       6
#define CHAR_MAP_SIZE   26
#define DIGIT_MAP_SIZE  10


PCF8574 pcf8574(I2C_ADDR);

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


void setup() { 
  Serial.begin(9600);
  delay(500);

  pcf8574.pinMode(P0, OUTPUT, LOW);
  pcf8574.pinMode(P1, OUTPUT, LOW);
  pcf8574.pinMode(P2, OUTPUT, LOW);
  pcf8574.pinMode(P3, OUTPUT, LOW);
  pcf8574.pinMode(P4, OUTPUT, LOW);
  pcf8574.pinMode(P5, OUTPUT, LOW);
  pcf8574.pinMode(P6, OUTPUT, LOW);
  pcf8574.pinMode(P7, OUTPUT, LOW);

  pcf8574.begin();

  if (VERBOSE) {
    Serial.println("Start");
  }
}


void loop() {
  int i;
  unsigned char chr;
  PCF8574::DigitalInput digitalInput;

  /*
  for (i = 0; i < 8; i++) {
    chr = digitMap[i % DIGIT_MAP_SIZE];
    pcf8574.digitalWrite(i, (chr & (1 << i)));
    if (VERBOSE) {
      Serial.println("Char: " + String(chr));
    }
  }
  */
  for (i = 0; i < 10; i++) {
    chr = digitMap[i % DIGIT_MAP_SIZE];
    digitalInput.p7 = ((chr >> 7) & 0x01);
    digitalInput.p6 = ((chr >> 6) & 0x01);
    digitalInput.p5 = ((chr >> 5) & 0x01);
    digitalInput.p4 = ((chr >> 4) & 0x01);
    digitalInput.p3 = ((chr >> 3) & 0x01);
    digitalInput.p2 = ((chr >> 2) & 0x01);
    digitalInput.p1 = ((chr >> 1) & 0x01);
    digitalInput.p0 = ((chr >> 0) & 0x01);
    pcf8574.digitalWriteAll(digitalInput);
    if (VERBOSE) {
      Serial.println("Char: " + String(chr));
    }
    delay(1000);
  }
}
