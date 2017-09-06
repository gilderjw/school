/* written by Jim Gildersleeve Brian Suchy and Guilherme Simas */

#include "./kernel.h"

int main() {
  makeInterrupt21();
  interrupt(0x21, 4, "shell", 0x2000, 0);


  printString("woah man, halt and catch fire");

  while (1) {}

  return 0;
}

void readFile(char* fileName, char *buf) {
  char dirs[SECTOR_SIZE];

  int j = 0;
  int i = 0;
  int nameLength = 0;

  readSector(&dirs, DIRECTORY_SECTOR);

  while (fileName[nameLength] != '\0' && fileName[nameLength] != ' '
         && fileName[nameLength] != LINEFEED && fileName[nameLength] != ENTER) {
    nameLength = nameLength + 1;
  }

  for (i = 0; i < SECTOR_SIZE - 5; i += 0x20) {
    if (strcmp(&dirs[i], fileName, nameLength)) {
      i += 6;
      do {
        readSector(buf + SECTOR_SIZE * j, dirs[i + j]);
        j++;
      } while (dirs[i + j] != 0);
      break;
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
  char c = 0;
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

void writeSector(char *buffer, int sector) {
  int relSector = (mod(sector, 18)) + 1;
  int head = mod(div(sector, 18), 2);
  int track = div(sector, 36);

  interrupt(IO, 3 * 256 + 1, buffer, track * 256 + relSector, head * 256 + 0);
}

void deleteFile(char* fileName) {
  char dirs[SECTOR_SIZE];
  char map[SECTOR_SIZE];

  int j = 0;
  int i = 0;

  readSector(&dirs, DIRECTORY_SECTOR);
  readSector(&map, MAP_SECTOR);

  for (i = 0; i < SECTOR_SIZE - 5; i++) {
    if (dirs[i] == fileName[0]) {
      if (dirs[i + 1] == fileName[1] || fileName[1] == '\0') {
        if (dirs[i + 2] == fileName[2] || fileName[1] == '\0') {
          if (dirs[i + 3] == fileName[3] || fileName[1] == '\0') {
            if (dirs[i + 4] == fileName[4] || fileName[1] == '\0') {
              if (dirs[i + 5] == fileName[5] || fileName[1] == '\0') {
                dirs[i] = 0x00;
                do {
                  map[dirs[i + 6 + j]] = 0x00;
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
  writeSector(&dirs, DIRECTORY_SECTOR);
  writeSector(&map, MAP_SECTOR);
  return;
}

void writeFile(char* name, char* buffer, int numberOfSectors) {
  char map[SECTOR_SIZE];
  char dirs[SECTOR_SIZE];
  int directory, mapptr, j, i;
  readSector(&dirs, DIRECTORY_SECTOR);
  readSector(&map, MAP_SECTOR);

  /* scan the directory */
  for (directory = 0; directory < SECTOR_SIZE - 5; directory += 0x20) {
    if (dirs[directory] == 0x00) {
      for (j = 0; j < 6; j++) {
        if (name[j] == '\0') {
          break;
        }
        dirs[directory + j] = name[j];
      }
      for (; j < 6; j++) {
        dirs[directory + j] = 0x00;
      }

      directory += 6;

      /* add to map and actual directory*/
      for (j = 0; j < numberOfSectors; j++) {
        for (mapptr = 0; mapptr < SECTOR_SIZE; mapptr++) {
          if (map[mapptr] == 0x00) {
            map[mapptr] = 0xFF;
            dirs[directory] = mapptr;
            directory++;
            writeSector(buffer + (512 * j), mapptr);
            break;
          }
        }
      }

      if (mapptr == SECTOR_SIZE) {
        printString("no open blocks");
        return;
      }

      break;
    }
  }
  writeSector(&dirs, DIRECTORY_SECTOR);
  writeSector(&map, MAP_SECTOR);
}

// STR1 does not need to be terminated
bool strcmp(char *str1, char *str2, int size) {
  int i = 0;
  for (i = 0; i < size ; i++) {
    if (str2[i] == '\0') {
      return true;
    } else if (str1[i] != str2[i]) {
      return false;
    }
  }
  return true;
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
  } else if (ax == 6) {
    writeSector(bx, cx);
  } else if (ax == 7) {
    deleteFile(bx);
  } else if (ax = 8) {
    writeFile(bx, cx, dx);
  } else {
    printString("invalid syscall");
  }
}
