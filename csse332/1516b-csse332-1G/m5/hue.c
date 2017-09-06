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
#define NUMBER_OF_COMMANDS 8

int main() {
  enableInterrupts();
  interrupt(SYSCALL, PRINT, "hue\n", 0, 0);

  while (1) {}

  return 0;
}
