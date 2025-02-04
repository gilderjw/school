/***************************************************************************
 *
 * PROGRAM  babershopMain.c
 *
 * Written by J.P. Mellor, 3 February 2012
 *
 ***************************************************************************/

#include "sharedMemory.h"
#include <sys/wait.h>
#include <unistd.h>

int SH_MEM_KEY;

void
printBarberSummary(void) {
  exit(0);
}

void
printCustomerSummary(void) {
  exit(0);
}

/***************************************************************************
 * The main function forks children for the barbers and customers,
 * waits until they all exit, and then exits itself.
 ***************************************************************************/
int
main(int argc, char *argv[]) {
  int ShmID;
  sharedMemoryStruct *ShmPTR;
  char Who[] = "PARENT";
  int nBarbers;
  int nCustomers;
  char shmid[10], chairs[10];
  pid_t pid;
  int i, nChairs;

  /*
   * Obtain a unique key.
   */
  if (argc  < 4) {
    printf("Insufficient arguments\n\n");
    printf("Usage: ./babershop <shmem id> <num barbers> "
           "<num customers> <num chairs>\n");
    exit(EXIT_FAILURE);
  }

  SH_MEM_KEY = atoi(argv[1]);
  snprintf(shmid, sizeof(shmid), "%d", SH_MEM_KEY);
  nBarbers = atoi(argv[2]);
  nCustomers = atoi(argv[3]);
  nChairs = atoi(argv[4]);
  snprintf(chairs, sizeof(chairs), "%d", nChairs);

  /****************************
   * Attach shared memory
   ****************************/
  getSharedMemory(&ShmID, SH_MEM_KEY, &ShmPTR, TRUE);

  /*****************************
   * Initialize shared variables and semaphores.
   *****************************/
  ShmPTR->freeSeats = nChairs;
  sem_init(&(ShmPTR->customerReady), 1, 0);
  sem_init(&(ShmPTR->customerInChair), 1, 0);
  sem_init(&(ShmPTR->barberDone), 1, 0);
  sem_init(&(ShmPTR->customerReady), 1, 0);
  sem_init(&(ShmPTR->accessSeats), 1, nChairs);
  ShmPTR->done = 0;

  /********************************
   * Fork child processes
   ********************************/
  // start barbers
  for (i = 0; i < nBarbers; i++) {
    pid = fork();
    if (pid < 0) {
      printf("*** fork error (server) ***\n");
      exit(1);
    } else if (pid == 0) {
      char barber[25];
      snprintf(barber, sizeof(barber), "barber %d", i);
      fprintf(stderr, "Spawned %s\n", barber);
      char *cmd[] = {"barber", shmid, barber, chairs, NULL};
      if (execv("barber", cmd) < 0) {
        printf("*** exec error (server) ***\n");
      }
      printBarberSummary();
    }
  }

  // start customers
  for (i = 0; i < nCustomers; i++) {
    pid = fork();
    if (pid < 0) {
      printf("*** fork error (server) ***\n");
      exit(1);
    } else if (pid == 0) {
      char customer[25];
      snprintf(customer, sizeof(customer), "customer %d", i);
      fprintf(stderr, "Spawned %s\n", customer);
      char *cmd[] = {"customer", shmid, customer, NULL};
      if (execv("customer", cmd) < 0) {
        printf("*** exec error (server) ***\n");
      }
      printCustomerSummary();
    }
  }
  /**************************************
   * Wait for all children to exit.
   **************************************/
  for (i = 0; i < nCustomers; i++) {
    wait(NULL);
  }
  ShmPTR->done = 1;
  for (i = 0; i < nBarbers; i++) {
    sem_post(&(ShmPTR->customerReady));
    wait(NULL);
  }

  /*************************************/
  /*** Detach shared memory and exit ***/
  /*************************************/
  detachSharedMemory(ShmPTR, Who);
  removeSharedMemory(ShmID, Who);
  printf("Parent exits...\n");
  return 0;
}
