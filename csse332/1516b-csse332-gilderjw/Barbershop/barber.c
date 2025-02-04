/***************************************************************************
 * The barber ...
 ***************************************************************************/

#include <time.h>
#include "./sharedMemory.h"
#include "./utility.h"

/***************************************************************************
 * The main function for a barber
 *
 * The barber should wait for a customer.  When one is available, the
 * barber starts and finnishes cutting hair.  If no more customers
 * are available, the barber takes a nap.
 ***************************************************************************/
int
main(int argc, char *argv[]) {
  int ShmID;
  sharedMemoryStruct* ShmPTR;
  char *Who = argv[2];
  int nChairs = atoi(argv[3]);
  int waiting;

  /*
   * Obtain a unique key.
   */
  int SH_MEM_KEY = atoi(argv[1]);

  /****************************/
  /*** Attach shared memory ***/
  /****************************/
  getSharedMemory(&ShmID, SH_MEM_KEY, &ShmPTR, FALSE);

  /*
   * Barber ...
   */
  while (!ShmPTR->done) {
    sem_post(&(ShmPTR->barberReady));
    // Wait for a customer
    sem_wait(&(ShmPTR->customerReady));

    // If we're not truly done, cut another customer's hair
    if (!ShmPTR->done) {
      // Start cutting hair
      cutHairReady(Who);

      // Finish cutting hair
      cutHairDone(Who);

      // If no customers are waiting, take a nap
      waiting = ShmPTR->freeSeats != nChairs;
      if (!waiting) {
        takeNap(Who);
      }
    }
  }

  /*************************************/
  /*** Detach shared memory and exit ***/
  /*************************************/
  detachSharedMemory(ShmPTR, Who);

  fprintf(stderr, "%s exits now...\n", Who);
  return 0;
}
