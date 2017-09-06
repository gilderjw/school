// jim gildersleeve and brian suchy
#ifndef __AIRPLANE_H__
#define __AIRPLANE_H__

/* This file is used to track the seats in an airplane */

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include  <sys/types.h>
#include  <sys/ipc.h>
#include  <sys/shm.h>
#include <sys/wait.h>
#include  <string.h>
#include  <unistd.h>
#include <semaphore.h>

/* This file should be used for input.
 * By changing COACH_ROWS, COACH_ACROSS,
 * FIRST_ROWS, FIRST_ACROSS, and isle,
 * the size and configuration of the
 * plane can be altered.
 * Currently, printing is not set up for
 * different FIRST_ACROSS and COACH_ACROSS.
 */

#define MAX_ROWS 50
#define MAX_ACROSS 7
#define COACH_ROWS 10
#define COACH_ACROSS  3
#define FIRST_ROWS 2
#define FIRST_ACROSS 3
#define isle 2

extern int rows;
extern int across;

/* Used in shared memory to track seat reservations */
typedef struct {
  char seats[MAX_ROWS][MAX_ACROSS];
} plane;

typedef struct {
  sem_t firstClass;
  sem_t coach;
  sem_t mutualExclusion;
  plane jihadMachine;
  char filename[64];
} Semaphores;

typedef struct {
  int id;
  int coach;
  int numberOfSeats;
  int wanted;
  int seats[COACH_ROWS * COACH_ACROSS];
} iInfo;

Semaphores* attachSharedMemoryRegion(int ShmID);


void locateAndAttachSharedMemory(key_t key, Semaphores **ShmPTR);

/* Returns the number of seats still available on the plane */
int seatsRemaining(plane* p, int coachSeating);

/*
 * Attempts to reserve a seat at a given position
 * Returns -1 if seat is already reserved and the seat number if
 * the seat is reserved.
 */
int reserveSeat(plane* p, int rowNum, int acrossNum);

/*
 * Reserves a random seat
 * Returns -1 if a seat cannot be reserved or the seat
 * number if a seat is reserved.
 */
int reserveRandomSeat(plane* p, int coachSeating);

/* Randomly determines if the customer wants coach or first class */
int wantsCoachSeating(int i);

/* Randomly determines the number of seats a customer wants to purchase */
int getNumberOfSeats(int i, int coachSeating);

/* Prints the plane and the seats still available */
void printSeatsAvailable(plane* p);

#endif /* __AIRPLANE_H__ */
