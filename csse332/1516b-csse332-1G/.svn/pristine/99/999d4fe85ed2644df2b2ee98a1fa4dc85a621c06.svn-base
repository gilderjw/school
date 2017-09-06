/*  prints the string given to the screen  */
/* Jim Gildersleeve Brian Suchy Guilherme Simas */
#define BACKSPACE 0x8
#define ENTER 0xd
#define END 0x0
#define PRINT 0x10
#define READ 0x16
#define ASCII 0xe * 256
#define LINEFEED 0xa
#define IO 0x13
#define SERVICE 0x21
#define DIRECTORY_SECTOR 2
#define MAP_SECTOR 1
#define SECTOR_SIZE 512
#define MAX_FILE_SIZE 13312

typedef int bool;
#define true 1
#define false 0

void printString(char *chars);
void readString(char *buf);
void readSector(char *buffer, int sector);
int mod(int a, int b);
int div(int a, int b);
void handleInterrupt21(int ax, int bx, int cx, int dx);
void readFile(char* fileName, char *buf);
void executeProgram(char* name, int segment);
void terminate();
void writeSector(char *buffer, int sector);
bool strcmp(char *str1, char *str2, int size);
