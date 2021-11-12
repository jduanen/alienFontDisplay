/***************************************************************************

 AFD Test Program
 
****************************************************************************/

#define NUM_CHARS 6
#define VERBOSE   1


unsigned char chars[NUM_CHARS] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};


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
  Serial.println("Start");
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
  chars[NUM_CHARS - 1] = chars[0] - 1;
  for (i=(NUM_CHARS - 2); i > 0; i--) {
    chars[i - 1] = chars[i] - 1;
  }
 
  if (VERBOSE) {
    Serial.print("Chars: ");
    for (i=0; i < (NUM_CHARS - 1); i++) {
      Serial.print("0x" + String(chars[i], HEX) + ", ");
    }
    Serial.println("0x" + String(chars[NUM_CHARS - 1], HEX));
  }
}
