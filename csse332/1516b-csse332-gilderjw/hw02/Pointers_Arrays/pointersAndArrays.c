/*
 * Example using arrays and pointers.
 * by Delvin Defoe, CSSE 332, Dec. 2, 2007. 
 * modified by <Jim Gildersleeve>, <12-9-15>.
 */

#include <stdio.h>
#include <stdlib.h>

/* Initialize a fixed size array of integers with random numbers */
void fillArray(int a[], int size);

/* Print an array of integers when the array is passed as a parameter */
void printArray(int a[], int size);

/* Print an array of integers when a pointer to the array is passed as 
 * a parameter*/
void printArrayWithPointers(int *ap, int size);


/* Initialize a fixed size array of integers with random numbers */
void fillArray(int a[], int size) {
  int index;
  for (index=0; index < size; index++) {
    a[index] = rand() % 100;
  }
}

/* Print an array of integers when the array is passed as a parameter */
void printArray(int a[], int size) {
  int index;
  printf("\nprintArray:  Printing the array of integers on a single line.\n");
  for (index=0; index < size; index++) {
    printf("scores[%d]=%d \n", index, a[index]);
  }
  printf("\n");
}

/* Print an array of integers when the pointer is passed as a parameter */
void printArrayWithPointers(int *ap, int size) {
  int index;
  printf("\nprintArrayWithPointers:  Printing the array of ints\n");
  for (index=0; index < size; index++) {
    printf("scores[%d]=%d \n", index, *(ap+(index)));
  }
  printf("\n");
}

#define kMaxSize 10000

int main(int argc, char* argv[]) {
  int scores[kMaxSize];
  int aSIZE;
  int* scorePtr = &scores[0];

  printf("Enter an integer for the size of an integer array\n");
  if (aSIZE > kMaxSize) {
    printf("Selected size too large.\n");
    return 1;
  }

  /* Flushes (writes) any data from internal buffers to the console */
  fflush(stdout);
  scanf("%d", &aSIZE);
  fillArray(scores, aSIZE);
  printArray(scores, aSIZE);
  printArrayWithPointers(scorePtr, aSIZE);


  return 0;
}
