/* This is where you implement the core solution.
   by <Jim Gildersleeve and Brian Suchy>, <1-3-16>
*/
#include "./processes.h"

int main(int argc, char const *argv[]) {
  if (argc != 4) {
    printf("invalid ussage, use 3 arguments\n");
    return 1;
  }

  FILE* inFile = fopen(argv[3], "r");
  if (inFile == NULL) {
    printf("unable to open file, noob\n");
    return 2;
  }

  pidInfo threads[atoi(argv[2])];

  int lineNumber = 1;
  char line[128];
  char newLine[128];
  pid_t myPid;
  char c;
  struct timeval parentStart, parentEnd;

  gettimeofday(&parentStart, NULL);
  while (lineNumber < atoi(argv[1]) + 1) {
    c = getc(inFile);
    if (c == EOF) {
      fclose(inFile);
      inFile = fopen(argv[3], "r");
    }
    int count = 0;
    while (c != '\n') {
      line[count] = c;
      newLine[count] = c;
      count++;
      c = getc(inFile);
    }
    line[count] = '\0';

    gettimeofday(&(threads[lineNumber].startTime), NULL);
    myPid = fork();

    /*child*/
    if (myPid == 0) {
      newLine[count - 4] = '_';
      newLine[count - 3] = 'o';
      newLine[count - 2] = 'u';
      newLine[count - 1] = 't';
      newLine[count] = '.';
      newLine[count + 1] = 't';
      newLine[count + 2] = 'x';
      newLine[count + 3] = 't';
      newLine[count + 4] = '\0';

      usleep((atoi(argv[1]) - lineNumber) * atoi(argv[2]));
      printf("process number %d:\n", lineNumber);
      execlp("./myCopy", "myCopy", line, newLine, NULL);
      printf("failure to exec\n");
      return 12;
    } else {  // parent
      threads[lineNumber].mypid = myPid;
      printf("lineNumber:%d\n", lineNumber);
      lineNumber++;
    }
  }

  int i;
  for (i = 1; i < (atoi(argv[1]) + 1); i++) {
    pidInfo pr = threads[i];
    waitpid(pr.mypid, NULL, 0);
    gettimeofday(&pr.endTime, NULL);
    unsigned int end =  1000000 * pr.endTime.tv_sec + pr.endTime.tv_usec;
    unsigned int start =  1000000 * pr.startTime.tv_sec + pr.startTime.tv_usec;
    printf("Time for process %d = %d microseconds.\n", i,
           end - start);
  }
  gettimeofday(&parentEnd, NULL);

  unsigned int start =  1000000 * parentStart.tv_sec + parentStart.tv_usec;
  unsigned int end =  1000000 * parentEnd.tv_sec + parentEnd.tv_usec;

  printf("parent done in: %d\n", end - start);

  return 0;
}
