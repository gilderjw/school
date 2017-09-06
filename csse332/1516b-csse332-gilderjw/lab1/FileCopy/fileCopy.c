/* Implement your solution to the File Copy problem here.
   by <Jim Gildersleeve>, <12-2-2015>
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int readLineFromFile(FILE *file, char **buf) {
  size_t length = 0;
  char *tmp = NULL;

  getline(&tmp, &length, file);

  *buf = tmp;

  return strlen(tmp);
}

void writeLineToFile(FILE *file, char *buf, int size) {
  char tmp[512];
  int i;
  for (i = 0; i < size-1; i++) {
    tmp[i] = buf[i];
  }
  tmp[i] = '\n';
  tmp[i+1] = '\0';

  fprintf(file, "%s", tmp);
}


int main(int argc, char const *argv[]) {
  if (argc != 3) {
    printf("invalid number of arguments");
    return 1;
  }

  FILE *input = fopen(argv[1], "r");
  FILE *ouput = fopen(argv[2], "w");

  if (input == NULL) {
    printf("invalid first parameter\n");
    return 2;
  }

  char *buffer = malloc(512 * sizeof(char));
  while (1) {
    int lineLength = readLineFromFile(input, &buffer);

    if (lineLength == 0)
      break;

    writeLineToFile(ouput, buffer, lineLength);
  }

  free(buffer);
  return 0;
}
