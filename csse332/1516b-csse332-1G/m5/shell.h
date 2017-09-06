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
#define TAB 0x9
#define KILL 0x9
#define SHELL 0xa
#define LISTPIDS 0xb
#define EXEC_FOREGROUND 12
#define NUMBER_OF_COMMANDS 13
#define APPEARANCE 0x10
#define AX_SET_BG 0xb*256
#define CLEAR_SCREEN 0x03
#define TIME_CALL 0x1a
#define CURRENT_TIME 0x2 * 256

int sizeOfCommandName[] = {
  5,
  8,
  7,
  5,
  3,
  7,
  5,
  8,
  5,
  6,
  3,
  3,
  4
};

char *commandName[NUMBER_OF_COMMANDS] = {
  "type ",
  "execute ",
  "delete ",
  "copy ",
  "dir",
  "create ",
  "kill ",
  "listpids",
  "exfg ",
  "setbg ",
  "cls",
  "NSA",
  "help"
};

char *commandDes[NUMBER_OF_COMMANDS] = {
  "[fileName]- prints out [fileName] (basically cat) ",
  "[fileName] - starts [fileName] (./) ",
  "[fileName] - deletes [fileName] (rm)",
  "[fileName], [file2]- copy [fileName] to [file2] (cp)",
  "- prints directory and number of sectors occupied",
  "[fileName]- create a file named [fileName] allows user to input text",
  "[fileName]- kill process with given pid",
  "- lists all the running processes and pids",
  "[fileName]- exfg executes [fileName] and blocks shell until termination",
  "[Color] - changes background to [Color]",
  "- clears the screen (cls)",
  "- wipes everything on drive to hide from NSA",
  "- displays this message"
};

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
void pkill(char* pid);
void listpids();
void execForeground(char* fileName);
void itos(char *str, unsigned int i);
void help();
void printString(char* buf);
void setBG(char* color);
void clearScreen();
void NSA();
