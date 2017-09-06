/* This is where you implement the core solution.
   by <Jim Gildersleeve and Brian Suchy>, <1-6-16>
*/
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>
#include <inttypes.h>
#include <string.h>

#define MAX_BUFFER_SIZE 100000
#define MAX_N_SIZE 100
#define MAX_LINE_SIZE 10

typedef struct {
  int* inputList;
  int size, id;
} SortParam;

typedef struct {
  int* array;
  int id;
  int left, right;
} MergeParams;

typedef struct {
  int max, min, count;
  double mean;
} averages;

extern int buffer[MAX_N_SIZE][MAX_BUFFER_SIZE];
/* other global variable declarations can go here */
int n = 0;
int count = 0;
int64_t runtimes[MAX_N_SIZE];

void BruteForceSort(int inputList[], int inputLength);
void BubbleSort(int inputList[], int inputLength);
void MergeSort(int *array, int left, int right);
void Merge(int *array, int left, int mid, int right);
void MergeAndOutputBuffer(char* outputFile);

void *bruteForceSort(void *param);
void *mergeSort(void * param);
void *bubbleSort(void *param);
void average();
