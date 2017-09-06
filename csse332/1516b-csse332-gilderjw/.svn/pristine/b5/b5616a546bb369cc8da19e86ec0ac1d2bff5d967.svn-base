/*****************************************************************************
 * File: threads2.c History: Created April 8, 2008 by Larry Merkle
 *
 * This program demonstrates the use of POSIX threads when more than a
 * single parameter needs to be passed to the threads.  Since POSIX
 * threads only allow a single parameter to be passed, multiple
 * parameters must be combined into a struct variable (of type "struct
 * thread_input_struct" in this program).  In this application, one of
 * the input parameters for the threads is the id number, and the
 * other is the shared file descriptor for the output file.  The
 * latter is passed by reference.
 *
 * Ensure that you understand how the threads receive and access their
 * id numbers.  Also ensure that you understand how the threads
 * receive and access the shared file descriptor.  Experiment with the
 * program.  For example, see what happens if the file descriptor is
 * passed by value instead of by reference (start by changing the
 * second field of the struct to type FILE*).  Can you make some other
 * modifications so that the program work correctly even when the file
 * descriptor is passed by value?
 *
 * Modify the program so that all of the threads are spawned before
 * any of them are collected (i.e. before any of their return values
 * are checked).
 *
 * Write your own program that prompts the user for an integer n (the
 * number of squares to compute), dynamically allocates an array of n
 * integers, initializes all of the elements to -1, opens out.txt for
 * output, and spawns n threads.
 *  
 * Thread 0 should store the value 0 in the element of the array and
 * then exit.
 *
 * Thread i <> 0 should wait until the value x of element i-1 is other
 * than -1, compute x + 2i + 1, store the result in element i, write
 * its id and completion time to out.txt, and exit.
 *
 *****************************************************************************/

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

struct thread_input_struct {
  int id;
  FILE** output_ptr;
};

void *thread_func(void *arg);

/******************************** 
 *** Main program starts here ***
 ********************************/

int
main(int argc, char *argv[]) {
  pthread_t threads;
  int rc, j;
  FILE* output;

  /*** Process command line arguments ***/

  if (argc!=2) {
    printf("Usage:  %s <no of threads>\n", argv[0]);
    exit(2);
  }
  
  /*** Open output file ***/
  if (!(output=fopen("out.txt", "w"))) {
    fprintf(stderr, "Could not open out.txt.  Aborting.");
    exit(-1);
  }
  
  /*** Spawn requested number of threads ***/

  for (j=0; j<atoi(argv[1]); j++) {
    printf("Creating thread %d\n", j);

    /* Initialize thread with id number and pointer to file descriptor */
    struct thread_input_struct thread_input;
    thread_input.id = j;
    thread_input.output_ptr = &output;

    /* Spawn thread */
    rc = pthread_create(&threads, NULL, thread_func, (void *) &thread_input);
    if (rc) {
      perror("Thread not created");
      exit(0);
    }
 
    /* Check status of thread */
    rc = pthread_join(threads, NULL);
    if (rc) {
      printf("ERROR; return code from pthread_join() is %d\n", rc);
      exit(-1);
    }
  }
  

  fclose(output);
  return 0;
}

/************************************* 
 *** Threads execute this function ***
 *************************************/

void *
thread_func(void *the_thread_input)
{
  struct thread_input_struct* thread_input = (struct thread_input_struct *) the_thread_input;
  fprintf(*(thread_input->output_ptr), "\n%d: Hello World!\n",
          thread_input->id);
  pthread_exit(NULL);
}
