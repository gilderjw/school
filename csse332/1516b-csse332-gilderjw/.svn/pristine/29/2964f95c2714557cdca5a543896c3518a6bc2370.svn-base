#include "./utility.h"

/* 
 * The functions below are utility functions
 * that are used by barbers and customers.
 */

void
enterBarbershop(char Who[]) {
  fprintf(stderr, "%s entered the barber shop.\n", Who);
}

void
exitBarbershop(char Who[]) {
  fprintf(stderr,
          "%s is done getting a hair cut. Exiting the barber shop.\n", Who);
}

void
leaveBarbershop(char Who[]) {
  fprintf(stderr, "%s left the barber shop.  All seats are full.\n", Who);
}

void
takeSeat(char Who[], int seats) {
  fprintf(stderr,
          "%s has taken a seat.  There are %d open seats.\n", Who, seats);
}

void
getHaircut(char Who[], int seats) {
  fprintf(stderr,
          "%s is getting his hair cut.  There are %d open seats.\n",
          Who, seats);
  usleep(1);
}

void
cutHairReady(char Who[]) {
  usleep(1);
  fprintf(stderr, "%s is ready to cut hair.\n", Who);
}

void
cutHairDone(char Who[]) {
  usleep(10+rand()%50);
  fprintf(stderr, "%s is done cutting hair.\n", Who);
}

void
takeNap(char Who[]) {
  fprintf(stderr, "%s is taking a nap.\n", Who);
  usleep(1+rand()%20);
  fprintf(stderr, "%s is done napping.\n", Who);
}
