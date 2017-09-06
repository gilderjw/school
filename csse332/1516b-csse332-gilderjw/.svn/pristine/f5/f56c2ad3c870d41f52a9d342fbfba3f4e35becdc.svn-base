/* This is the shell you must fill in or replace in order to complete
   this project.  Do not forget to include your name in the initial
   comments of this file.
   by jim gildersleeve and brian suchy
*/
#include <time.h>
#include "./airlinereservation.h"



int main(int argc, char* argv[]) {
  if (argc != 3) {
    printf("ussage: ./airlinereservation <# of customers> <output file>\n");
    return 1;
  }

  int numberOfCustomers = atoi(argv[1]);
  int sharedId = createSharedMemoryRegion(getuid());
  Semaphores *semis = attachSharedMemoryRegion(sharedId);

  /*  PURGE THE SODOM BELOW  */
  FILE *output = fopen(argv[2], "w");
  fclose(output);
  snprintf(semis->filename, sizeof(semis->filename), "%s", argv[2]);

  sem_init(&(semis->coach), 1, 1);
  sem_init(&(semis->firstClass), 1, 1);
  sem_init(&(semis->mutualExclusion), 1, 1);

  int i;

  pid_t *pid = malloc(numberOfCustomers * sizeof(pid_t));

  printf("plane:\n");
  printSeatsAvailable(&(semis->jihadMachine));

  for (i = 0; i < numberOfCustomers; i++) {
    *(pid + i) = fork();
    if (*(pid + i) == 0) { /* child */
      char str[10];
      snprintf(str, sizeof(str), "%d", sharedId);

      char stri[10];
      snprintf(stri, sizeof(stri), "%d", i);
      if (execlp("./client", "client", str, stri, NULL) < 0) {
        printf("failed\n");
        exit(3);
      }
    }
  }

  for (i = 0; i < numberOfCustomers; i++) {
    waitpid(0, 0, 0);
  }

  shmctl(sharedId, IPC_RMID, NULL);
  free(pid);

  return 0;
}

/***************************************************************************
 * Create a shared memory region to exchange data with the client.
 * The first parameter specifies the key for the shared memory region.
 * The second parameter specifies the size (in bytes) of the region.
 * The third parameter identifies modes, which indicates how the
 * shared memory will be created and used -- for reading, writing, or
 * both. Returns the ID of the shared memory region.
***************************************************************************/
int createSharedMemoryRegion(key_t key) {
  int ShmID = shmget(key, sizeof(Semaphores), IPC_CREAT | 0666);
  if (ShmID < 0) {
    perror("*** shmget error (server) ***\n");
    exit(1);
  }
  return ShmID;
}


