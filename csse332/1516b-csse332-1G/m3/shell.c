/* this is our swiggity swaggin shell */
/* Jim Gildersleeve Brian Suchy Guilherme Simas */

#include "./shell.h"
int main() {
  char input[LINE_LENGTH];
  int i;

  while (1) {
    interrupt(SYSCALL, PRINT, "ThisOSBestOS>", 0, 0);
    interrupt(SYSCALL, CIN, input, 0, 0);

    if (input[0] == 't' &&
        input[1] == 'y' &&
        input[2] == 'p' &&
        input[3] == 'e') {
      type(input + 5);
    } else if (input[0] == 'e' &&
               input[1] == 'x' &&
               input[2] == 'e' &&
               input[3] == 'c' &&
               input[4] == 'u' &&
               input[5] == 't' &&
               input[6] == 'e') {
      exec(input + 8, 0x2000);
    } else {
      interrupt(SYSCALL, PRINT, "You are bad and you should feel bad\n", 0, 0);
    }
  }
  return 0;
}

void exec(char* fileName, int segment) {
  interrupt(SYSCALL, EXEC, fileName, segment, 0);
}

void type(char* fileName) {
  char tmp[MAX_FILE_SIZE];
  interrupt(SYSCALL, READFILE, fileName, tmp, 0);
  interrupt(SYSCALL, PRINT, tmp, 0, 0);
}

