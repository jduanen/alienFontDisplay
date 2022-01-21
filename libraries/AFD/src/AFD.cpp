/***************************************************************************

 Alien Font Display Driver Library
 
****************************************************************************/

#include "Arduino.h"
#include <PCF8574.h>
#include "AFD.h"


AFD::AFD() {
    _scrollDelay = DEF_SCROLL_DELAY;
    _pause = DEF_PAUSE;
    _numUnits = DEF_NUM_UNITS;
    init();
};

AFD::AFD(int scrollDelay) {
    _scrollDelay = scrollDelay;
    _pause = DEF_PAUSE;
    _numUnits = DEF_NUM_UNITS;
    init();
}

AFD::AFD(int scrollDelay, int pause) {
    _scrollDelay = scrollDelay;
    _pause = pause;
    _numUnits = DEF_NUM_UNITS;
    init();
}

AFD::AFD(int scrollDelay, int pause, int numUnits) {
    _scrollDelay = scrollDelay;
    _pause = pause;
    if (numUnits > MAX_NUM_UNITS) {
        Serial.println("Error: too many display units, clipping to max");
        _numUnits = MAX_NUM_UNITS;
    } else {
        _numUnits = numUnits;
    }
    init();
}

void AFD::setPause(int pause) {
    _pause = pause;
}

int AFD::getPause() {
    return _pause;
}

void AFD::setScrollDelay(int scrollDelay) {
    _scrollDelay = scrollDelay;
}

int AFD::getScrollDelay() {
    return _scrollDelay;
}

void AFD::init() {
    byte unit;

    for (unit = 0; (unit < _numUnits); unit++) {
        _afd[unit] = new PCF8574(I2C_BASE_ADDR + unit);
    };

    _indx = 0;
    for (unit = 0; unit < _numUnits; unit++) {
        _afd[unit]->pinMode(P0, OUTPUT, HIGH);
        _afd[unit]->pinMode(P1, OUTPUT, HIGH);
        _afd[unit]->pinMode(P2, OUTPUT, HIGH);
        _afd[unit]->pinMode(P3, OUTPUT, HIGH);
        _afd[unit]->pinMode(P4, OUTPUT, HIGH);
        _afd[unit]->pinMode(P5, OUTPUT, HIGH);
        _afd[unit]->pinMode(P6, OUTPUT, HIGH);
        _afd[unit]->pinMode(P7, OUTPUT, HIGH);
        _afd[unit]->begin();
    }
    clearAll();
    if (VERBOSE) {
        Serial.println("Initialized");
    }
}

void AFD::setAllSegments(byte unit, uint8_t val) {
    byte seg;

    for (seg = 0; seg < NUM_SEGMENTS; seg++) {
        _afd[unit]->digitalWrite(seg, val);
    }
}

void AFD::clearUnit(byte unit) {
    byte seg;
    for (seg = 0; seg < NUM_SEGMENTS; seg++) {
        _afd[unit]->digitalWrite(seg, HIGH);
    }
}

void AFD::clearAll() {
    byte unit;

    for (unit = 0; unit < _numUnits; unit++) {
        setAllSegments(unit, HIGH);
    }
}

void AFD::setAll() {
    byte unit;
    for (unit = 0; unit < _numUnits; unit++) {
        setAllSegments(unit, LOW);
    }
}

void AFD::writeDigit(byte unit, byte digit) { 
    byte chr;
    PCF8574::DigitalInput digitalInput;

    if (!isDigit(digit)) {
        if (VERBOSE) {
            Serial.println("Invalid Digit: " + String(digit));
        }
    } else {
        chr = _digitMap[(digit - '0') % DIGIT_MAP_SIZE];
        digitalInput.p7 = bitRead(chr, 7);
        digitalInput.p6 = bitRead(chr, 6);
        digitalInput.p5 = bitRead(chr, 5);
        digitalInput.p4 = bitRead(chr, 4);
        digitalInput.p3 = bitRead(chr, 3);
        digitalInput.p2 = bitRead(chr, 2);
        digitalInput.p1 = bitRead(chr, 1);
        digitalInput.p0 = bitRead(chr, 0);

        _afd[unit % _numUnits]->digitalWriteAll(digitalInput);
        if (VERBOSE) {
          Serial.print("writeDigit: 0x" +  String(chr, HEX) + "; ");
        }
    }
}

void AFD::writeChar(byte unit, byte character) { 
    byte chr;
    PCF8574::DigitalInput digitalInput;

    if (!isUpperCase(character)) {
        if (VERBOSE) {
            Serial.println("Invalid Character: " + String(character));
        }
    } else {
        chr = _charMap[(character - 'A') % CHAR_MAP_SIZE];
        digitalInput.p7 = bitRead(chr, 7);
        digitalInput.p6 = bitRead(chr, 6);
        digitalInput.p5 = bitRead(chr, 5);
        digitalInput.p4 = bitRead(chr, 4);
        digitalInput.p3 = bitRead(chr, 3);
        digitalInput.p2 = bitRead(chr, 2);
        digitalInput.p1 = bitRead(chr, 1);
        digitalInput.p0 = bitRead(chr, 0);

        _afd[unit % _numUnits]->digitalWriteAll(digitalInput);
        if (VERBOSE) {
            Serial.print("writeChar: 0x" +  String(chr, HEX) + "; ");
        }
    }
}

void AFD::writeUnits(char *str) {
    int unit;
    byte chr;

    for (unit = 0; (unit < _numUnits); unit++) {
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

void AFD::printStr(String str) {
    char s[_numUnits + 1];
    int indx;

    if (str.length() <= _numUnits) {
        str.toCharArray(s, (_numUnits + 1));
        writeUnits(s);
    } else {
        for (indx = 0; (indx <= (str.length() - _numUnits)); indx++) {
            str.substring(indx, (indx + _numUnits)).toCharArray(s, (_numUnits + 1));
            writeUnits(s);
            delay(_scrollDelay);
        }
    }
    delay(_pause);
}
