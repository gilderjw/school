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
               input[6] == 'e' &&
               input[7] == ' ') {
      exec(input + 8, 0x2000);
    } else if (input[0] == 'd' &&
               input[1] == 'e' &&
               input[2] == 'l' &&
               input[3] == 'e' &&
               input[4] == 't' &&
               input[5] == 'e' &&
               input[6] == ' ') {
      delete(input + 7);
    } else if (input[0] == 'c' &&
               input[1] == 'o' &&
               input[2] == 'p' &&
               input[3] == 'y' &&
               input[4] == ' ') {
      copyFile(input + 5);
    } else if (input[0] == 'd' &&
               input[1] == 'i' &&
               input[2] == 'r') {
      dir();
    } else if (input[0] == 'c' &&
               input[1] == 'r' &&
               input[2] == 'e' &&
               input[3] == 'a' &&
               input[4] == 't' &&
               input[5] == 'e' &&
               input[6] == ' ' ) {
      createFile(input + 7);
    } else {
      interrupt(SYSCALL, PRINT, "You are bad and you should feel bad\n", 0, 0);
    }
  }
  return 0;
}

void createFile(char* args) {
  char buffer[MAX_FILE_SIZE];
  char line[LINE_LENGTH];
  int bptr = 0;
  int lptr = 0;
  int sectors = 0;
  line[0] = ' ';
  while (args[lptr] != '\n') {
    lptr++;
  }
  args[lptr - 1] = '\0';

  while (line[0] != ENTER) {
    lptr = 0;
    interrupt(SYSCALL, CIN, line, 0, 0);
    while (line[lptr] != '\0') {
      buffer[bptr] = line[lptr];
      bptr++;
      lptr++;
    }
    buffer[bptr] = '\n';
    bptr++;
  }
  buffer[bptr - 2] = '\0';

  if (mod(bptr, 512) > 0) {
    sectors = div(bptr, 512) + 1;
  } else {
    sectors = div(bptr, 512);
  }


  interrupt(SYSCALL, WRITEFILE, args, buffer, sectors);
}

void copyFile(char* params) {
  int i, j, fileSize, sectors;
  char infile[7], outfile[7];
  char buf[MAX_FILE_SIZE];
  char filesizestring[2];

// first parameter
  for (i = 0; i < 6; i++) {
    if (params[i] == ' ') {
      infile[i] = '\0';
      i++;
      break;
    }
    infile[i] = params[i];
  }

// second parameter
  for (j = 0; j < 6; j++) {
    if (params[i + j + 1] == '\n') {
      outfile[j] = '\0';
      break;
    }
    outfile[j] = params[i + j];
  }

  infile[6] = '\0';
  outfile[6] = '\0';
  interrupt(SYSCALL, READFILE, infile, buf, 0);

  for (fileSize = 0; fileSize < MAX_FILE_SIZE; fileSize++) {
    if (buf[fileSize] == '\0')
      break;
  }

  if (mod(fileSize, 512) > 0) {
    sectors = div(fileSize, 512) + 1;
  } else {
    sectors = div(fileSize, 512);
  }

  interrupt(SYSCALL, WRITEFILE, outfile, buf, sectors);
}

void delete(char *fileName) {
  interrupt(SYSCALL, DELETE, fileName, 0, 0);
}

void exec(char* fileName, int segment) {
  interrupt(SYSCALL, EXEC, fileName, segment, 0);
}

void type(char* fileName) {
  char tmp[MAX_FILE_SIZE];
  tmp[0] = '\0';
  interrupt(SYSCALL, READFILE, fileName, tmp, 0);
  interrupt(SYSCALL, PRINT, tmp, 0, 0);
}

void dir() {
  char dirs[SECTOR_SIZE];
  char str[7];
  int i, j;
  char numSectors;
  interrupt(SYSCALL, READSECTOR, dirs, 2, 0);

  for (i = 0; i < SECTOR_SIZE; i += 0x20) {
    if (dirs[i] != '\0') {
      for (j = 0; j < 6; j++) {
        str[j] = dirs[i + j];
      }
      str[6] = '\0';

      interrupt(SYSCALL, PRINT, str, 0, 0);
      numSectors = 0;

      while (dirs[i + 6 + numSectors] != '\0') {
        numSectors++;
      }
      numSectors += '0';
      str[0] = numSectors;
      str[1] = '\0';
      interrupt(SYSCALL, PRINT, ":\t", 0, 0);
      interrupt(SYSCALL, PRINT, str, 0, 0);
      interrupt(SYSCALL, PRINT, "\n", 0, 0);
    }
  }
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

void itos(char *str, unsigned int i) {
  char j = 0;
  if (div(i, 10)) {
    str[j] = div(i, 10);
    j++;
  }
  str[j] = mod(i, 10);
  str[j + 1] = '\0';
}
