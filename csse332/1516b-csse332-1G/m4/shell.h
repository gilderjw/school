/* Jim Gildersleeve Brian Suchy Guilherme Simas */
#define LINE_LENGTH 80
#define SYSCALL 0x21
#define READFILE 3
#define WRITEFILE 8
#define TERMINATE 5
#define READSECTOR 2
#define PRINT 0
#define CIN 1
#define MAX_FILE_SIZE 13312
#define EXEC 4
#define DELETE 7
#define SECTOR_SIZE 512
#define ASCII 0xe * 256
#define LINEFEED 0xa
#define ENTER 0xd


void type(char* fileName);
void exec(char* fileName);
void delete(char *fileName);
void writeFile(char* name, char* buffer, int numberOfSectors);
void copyFile(char* params);
int mod(int a, int b);
int div(int a, int b);
void dir();
void itos(char *str, unsigned int i);
void createFile(char* args);
