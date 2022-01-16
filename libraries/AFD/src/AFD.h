/***************************************************************************

 Alien Font Display Driver Library Header
 
****************************************************************************/

#define VERBOSE             1
#define DEF_NUM_UNITS       6
#define DEF_MAX_STR_LEN     32
#define DEF_SCROLL_DELAY    500
#define STARTUP_STRING      "HELLO WORLD"


class AFD {
public:
    AFD();
    AFD(int scrollDelay);
    AFD(int scrollDelay, int numUnits, int maxStrLen);
    void setAllSegments(byte unit, uint8_t val);
    void clearAll();
    void setAll();
    void printStr(String str);

private:
    int _indx;
    int _numUnits;
    int _maxStrLen;
    String _stringBuffer[2];
    String _displayStr = String(STARTUP_STRING);

    #define I2C_BASE_ADDR       0x20
    #define NUM_SEGMENTS        8
    #define CHAR_MAP_SIZE       26
    #define DIGIT_MAP_SIZE      10

    #define REVERSE_UNITS(u) ((NUM_UNITS - 1) - u)

    PCF8574 _afd[NUM_UNITS] = {
          PCF8574(I2C_BASE_ADDR),
        PCF8574(I2C_BASE_ADDR + 1),
          PCF8574(I2C_BASE_ADDR + 2),
          PCF8574(I2C_BASE_ADDR + 3),
          PCF8574(I2C_BASE_ADDR + 4),
          PCF8574(I2C_BASE_ADDR + 5)
    };

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
}
