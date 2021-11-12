/***************************************************************************

 AFD Test Program
 
****************************************************************************/

#define NUM_CHARS 6
#define FONT_SIZE 36
#define VERBOSE   0


//unsigned char chars[NUM_CHARS] = {0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF};
unsigned char chars[NUM_CHARS] = {0b11111100, 0b11111000, 0b11110000, 0b11100000, 0b11000000, 0b10000000};

unsigned char charMap[FONT_SIZE] = {
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

unsigned char digitMap[FONT_SIZE] = {
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
  int i;
         
  pinMode(2, OUTPUT);  // channel A  
  pinMode(3, OUTPUT);  // channel B   
  pinMode(4, OUTPUT);  // channel C
  pinMode(5, OUTPUT);  // channel D    
  pinMode(6, OUTPUT);  // channel E
  pinMode(7, OUTPUT);  // channel F
  pinMode(8, OUTPUT);  // channel G
  pinMode(9, OUTPUT);  // channel H

  pinMode(A0, OUTPUT); // display 1
  pinMode(A1, OUTPUT); // display 2
  pinMode(A2, OUTPUT); // display 3
  pinMode(A3, OUTPUT); // display 4
  pinMode(A4, OUTPUT); // display 5
  pinMode(A5, OUTPUT); // display 6

  pinMode(13, OUTPUT); // status LED

  Serial.begin(9600);  // FIXME runs at 4800 baud -- CPU clock must be slower than expected

  for (i=A0; (i < (A0 + NUM_CHARS)); i++) {
    digitalWrite(i, LOW);
  }
  for (i=2; (i <= 9); i++) {
    digitalWrite(i, LOW);
  }
  if (VERBOSE) {
    Serial.println("Start");
  }
}


void loop() {
  unsigned char chr;
  int i, seg, dispNum;
  int status = HIGH;

  for (dispNum=0; dispNum < NUM_CHARS; dispNum++) {
    digitalWrite(A0 + dispNum, HIGH);
    chr = chars[dispNum];
    if (VERBOSE) {
      Serial.println(String(dispNum) + ": 0x" + String(chr, HEX));
    }

    for (seg=0; seg <= 7; seg++) {
      digitalWrite((seg + 2), (chr & (1 << seg)));
    }
    delay(1000);
    digitalWrite(A0 + dispNum, LOW);

    digitalWrite(13, status);  // blink status LEDs
    status = !status;
  }
  /*
  chr = chars[0] - 1;
  for (i=0; i < (NUM_CHARS - 1); i++) {
    chars[i] = chars[i + 1];
  }
  chars[NUM_CHARS - 1] = chr;
  */
 
  if (VERBOSE) {
    Serial.print("Chars: ");
    for (i=0; i < (NUM_CHARS - 1); i++) {
      Serial.print("0x" + String(chars[i], HEX) + ", ");
    }
    Serial.println("0x" + String(chars[NUM_CHARS - 1], HEX));
  }
}
