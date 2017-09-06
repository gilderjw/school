/* written by Jim Gildersleeve Brian Suchy and Guilherme Simas */

#include "./kernel.h"

int main() {
  makeInterrupt21();
  interrupt(0x21, 4, "shell\0", 0x2000, 0);


  printString("woah man, halt and catch fire");

  while (1) {}

  return 0;
}

void readFile(char* fileName, char *buf) {
  char dirs[SECTOR_SIZE];

  int j = 0;
  int i;

  readSector(&dirs, DIRECTORY_SECTOR);

  for (i = 0; i < SECTOR_SIZE - 5; i++) {
    if (dirs[i] == fileName[0]) {
      if (dirs[i + 1] == fileName[1] || fileName[1] == '\0') {
        if (dirs[i + 2] == fileName[2] || fileName[1] == '\0') {
          if (dirs[i + 3] == fileName[3] || fileName[1] == '\0') {
            if (dirs[i + 4] == fileName[4] || fileName[1] == '\0') {
              if (dirs[i + 5] == fileName[5] || fileName[1] == '\0') {
                i = i + 6; /* put us at first address */
                do {
                  readSector(buf + SECTOR_SIZE * j, dirs[i + j]);
                  j++;
                } while (dirs[i + j] != 0);
                break;
              }
            }
          }
        }
      }
    }
  }
  return;
}

void printString(char *chars) {
  int i = 0;
  while (chars[i] != END) {
    interrupt(PRINT, ASCII + chars[i], 0, 0, 0);
    i++;
  }
  if (chars[i - 1] == '\n') {
    interrupt(PRINT, ASCII + ENTER, 0, 0, 0);
  }
}

void readString(char *buf) {
  int i = 0;
  char c;
  do {
    c = interrupt(READ, 0, 0, 0, 0);
    if (i < 77) {
      if (i > 0 && c == BACKSPACE) {
        interrupt(PRINT, ASCII + BACKSPACE, 0, 0, 0);
        interrupt(PRINT, ASCII + ' ', 0, 0, 0);
        interrupt(PRINT, ASCII + BACKSPACE, 0, 0, 0);
        i--;
      } else if (c != BACKSPACE) {
        interrupt(PRINT, ASCII + c, 0, 0, 0);
        buf[i] = c;
        i++;
      }
    } else {
      interrupt(PRINT, ASCII + BACKSPACE, 0, 0, 0);
      interrupt(PRINT, ASCII + ' ', 0, 0, 0);
      interrupt(PRINT, ASCII + BACKSPACE, 0, 0, 0);
      i--;
    }
  } while (c != ENTER);
  buf[i] = LINEFEED;
  buf[i + 1] = END;

  interrupt(PRINT, ASCII + LINEFEED, 0, 0, 0);
  interrupt(PRINT, ASCII + ENTER, 0, 0, 0);
}

void readSector(char *buffer, int sector) {
  int relSector = (mod(sector, 18)) + 1;
  int head = mod(div(sector, 18), 2);
  int track = div(sector, 36);

  interrupt(IO, 2 * 256 + 1, buffer, track * 256 + relSector, head * 256 + 0);
}

int mod(int a, int b) {
  while (a >= b)
    a = a - b;
  return a;
}

int div(int a, int b) {
  int quotient = 0;
  while ((quotient  + 1)* b  <= a)
    quotient  = quotient  + 1;
  return quotient;
}

void executeProgram(char* name, int segment) {
  char buffer[MAX_FILE_SIZE];
  int i = 0;
  readFile(name, &buffer);

  while (i < MAX_FILE_SIZE) {
    putInMemory(segment, i, buffer[i]);
    i++;
  }

  launchProgram(segment);
}

void terminate() {
  interrupt(SERVICE, 4, "shell", 0x3000, 0);
}

void handleInterrupt21(int ax, int bx, int cx, int dx) {
  if (ax == 0) {
    printString(bx);
  } else if (ax == 1) {
    readString(bx);
  } else if (ax == 2) {
    readSector(bx, cx);
  } else if (ax == 3) {
    readFile(bx, cx);
  } else if (ax == 4) {
    executeProgram(bx, cx);
  } else if (ax == 5) {
    terminate();
  } else {
    printString("invalid syscall");
  }
}
