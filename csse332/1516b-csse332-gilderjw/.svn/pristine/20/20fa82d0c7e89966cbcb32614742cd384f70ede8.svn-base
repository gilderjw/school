/* Enter your code for exercise 4.26 in this file.
 * Be sure to include your name and section number in this document.
 * You must also provide a Makefile to compile your program.
 * By jim gildersleeve and brian suchy*/

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

int *fibNumbers;
void *fibonacci(void *amount);

int main(int argc, char *argv[]) {
  if (argc != 1) {
    printf("dont use Arguments!\n");
  }

  int amount;
  pthread_t thread;

  printf("How many fibonacci numbers do you want?\n");
  scanf("%d", &amount);
  fibNumbers = malloc(amount * sizeof(int));

  pthread_create(&thread, NULL, fibonacci, ((void*)&amount));
  pthread_join(thread, NULL);

  int i;
  for (i = 0; i < amount; i++) {
    printf("Fibonacci Number %d:\t %d\n", i + 1, fibNumbers[i]);
  }

  printf("\n");
  free(fibNumbers);
  return 0;
}

void *fibonacci(void *amount) {
  int hue = *((int*)amount);
  if (hue > 0) {
    fibNumbers[0] = 0;
  }

  if (hue > 1) {
    fibNumbers[1] = 1;
  }


  int i;
  for (i = 2; i < hue; i++) {
    fibNumbers[i] = fibNumbers[i - 1] + fibNumbers[i - 2];
  }
  return NULL;
}
