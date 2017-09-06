#ifndef UTILITY_H_
#define UTILITY_H_

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/* 
 * The function signatures below are for utility functions
 * that are used by barbers and customers.
 */

void enterBarbershop(char Who[]);

void exitBarbershop(char Who[]);

void leaveBarbershop(char Who[]);

void takeSeat(char Who[], int seats);

void getHaircut(char Who[], int seats);

void cutHairReady(char Who[]);

void cutHairDone(char Who[]);

void takeNap(char Who[]);

#endif /* UTILITY_H_ */
