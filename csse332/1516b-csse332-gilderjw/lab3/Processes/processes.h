/* Use this header file to include function signatures and to declare structure types.
   by <Jim Gildersleeve and Brian Suchy>, <1-3-16>
*/
#include <unistd.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
  pid_t mypid;
  struct timeval startTime, endTime;
} pidInfo;
