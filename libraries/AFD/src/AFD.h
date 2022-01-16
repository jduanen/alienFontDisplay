/***************************************************************************

 Alien Font Display Driver Library Header
 
****************************************************************************/

#ifndef AFD_H
#define AFD_H

#include <PCF8574.h>


#define VERBOSE             1
#define DEF_NUM_UNITS       6
#define DEF_MAX_STR_LEN     32
#define DEF_SCROLL_DELAY    500
#define MAX_NUM_UNITS       8
#define STARTUP_STRING      "HELLO WORLD"


class AFD {
public:
    String stringBuffer[2];
    String displayStr = String(STARTUP_STRING);

    AFD();
    AFD(int scrollDelay);
    AFD(int scrollDelay, int maxStrLen);
    AFD(int scrollDelay, int maxStrLen, int numUnits);
    void setAllSegments(byte unit, uint8_t val);
    void clearUnit(byte unit);
    void clearAll();
    void setAll();
    void writeDigit(byte unit, byte digit);
    void writeChar(byte unit, byte character);
    void writeUnits(char *str);
    void printStr(String str);

private:
    int _indx;
    int _numUnits;
    int _maxStrLen;
    int _scrollDelay;

    #define I2C_BASE_ADDR       0x20
    #define NUM_SEGMENTS        8
    #define CHAR_MAP_SIZE       26
    #define DIGIT_MAP_SIZE      10

    #define REVERSE_UNITS(u) ((_numUnits - 1) - u)

    byte _charMap[CHAR_MAP_SIZE] = {
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

    byte _digitMap[DIGIT_MAP_SIZE] = {
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

    PCF8574 *_afd[MAX_NUM_UNITS];

    void init();

};

#endif /* AFD_H */