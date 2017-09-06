/* File: createThreads.c
 * In this program, the "main" thread  creates n threads,   *
 * where "n" is a command line argument. The "main" thread  *
 * will  create a thread and then wait for it to exit,      *
 * before creating the next thread. The "main" thread will  *
 * quit after all the created threads quit. Each thread     *
 * created by the "main" thread will execute a function     *
 * called print_hello. Threads are created equal and do not *
 * have a parent/child relationship.                        */

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

void *print_hello(void *threadid);

int
main(int argc, char *argv[]) {
  pthread_t threads;
  int rc, j;

  if (argc != 2) {
    printf("./%s <no of threads>\n", argv[0]);
    exit(2);
  }

  for (j = 0; j < atoi(argv[1]); j++) {
    printf("\nCreating thread %d\n", j);
    rc = pthread_create(&threads, NULL, print_hello, (void *) &j);
    if (rc) {
      perror("Thread not created");
      exit(0);
    }

    rc = pthread_join(threads, NULL);
    if (rc) {
      printf("ERROR; return code from pthread_join() is %d\n", rc);
      exit(-1);
    }
  }

  return 0;
}

void *
print_hello(void *thredNumber) {
  printf("%d: Hello World!\n",  * ((int *) thredNumber));
  pthread_exit(NULL);
}
