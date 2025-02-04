/***************************************************************************
 * The customer ...
 ***************************************************************************/

#include <time.h>
#include "./sharedMemory.h"
#include "./utility.h"

/***************************************************************************
 * The main function for a customer
 *
 * The customer should check to see if there are any empty seets in
 * the barber shop's waiting room.  If there are empty seats, the
 * customer takes a seat and waits to be called by a barber.  If there
 * are no empty seats, the customer leaves the shop and exits.  When a
 * barber calls, the customer gets his hair cut.  When the barber is
 * finished the customer exits.
 ***************************************************************************/
int
main(int argc, char *argv[]) {
  int ShmID;
  sharedMemoryStruct* ShmPTR;
  char *Who = argv[2];
  int gotSeat = 0;

  /*
   * Obtain a unique key.
   */
  int SH_MEM_KEY = atoi(argv[1]);

  /****************************/
  /*** Attach shared memory ***/
  /****************************/
  getSharedMemory(&ShmID, SH_MEM_KEY, &ShmPTR, FALSE);

  /*
   * Customer ...
   */
  usleep(0 + rand() % 100);

  enterBarbershop(Who);
  // Check to see if there is an empty seat
  if (ShmPTR->freeSeats > 0) {
    // If there is, take it
    takeSeat(Who, --ShmPTR->freeSeats);
    gotSeat = 1;
  }

  if (gotSeat) {
    sem_post(&(ShmPTR->customerReady));
    // If we got a seat, wait for the barber to call us
    sem_wait(&(ShmPTR->barberReady));

    // When called by the barber, take a seat in the barber's chair
    getHaircut(Who, ++ShmPTR->freeSeats);

    // When done exit the barbershop
    exitBarbershop(Who);
  } else {
    // If not seats, leave shop
    leaveBarbershop(Who);
  }

  /*************************************/
  /*** Detach shared memory and exit ***/
  /*************************************/
  detachSharedMemory(ShmPTR, Who);

  printf("%s exits now...\n", Who);
  return 0;
}
