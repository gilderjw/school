/*  prints the string given to the screen  */

#define BACKSPACE 0x8
#define ENTER 0xd
#define END 0x0
#define PRINT 0x10
#define READ 0x16
#define ASCII 0xe * 256
#define LINEFEED 0xa
#define IO 0x13
#define SERVICE 0x21



void printString(char *chars);
void readString(char *buf);
void readSector(char *buffer, int sector);
int mod(int a, int b);
int div(int a, int b);
void handleInterrupt21(int ax, int bx, int cx, int dx);
