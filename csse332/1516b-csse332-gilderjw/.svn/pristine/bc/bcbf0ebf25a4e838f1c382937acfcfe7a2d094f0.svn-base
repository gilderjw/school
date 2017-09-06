CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm -pthread

all: barbershopMain barber customer

## Build the program from the object files (-o option)
barbershopMain: sharedMemory.o barbershopMain.o
	$(CC) barbershopMain.o sharedMemory.o -o barbershopMain $(LDFLAGS)

barber: sharedMemory.o utility.o barber.o
	$(CC) sharedMemory.o utility.o barber.o -o barber $(LDFLAGS)

customer: utility.o sharedMemory.o customer.o
	$(CC) utility.o sharedMemory.o customer.o -o customer $(LDFLAGS)

utility.o: utility.c utility.h
	$(CC) $(CFLAGS) utility.c $(CFLAGS)

barbershopMain.o: barbershopMain.c
	$(CC) $(CFLAGS) barbershopMain.c 

sharedMemory.o: sharedMemory.h sharedMemory.c
	$(CC) $(CFLAGS) sharedMemory.c 

barber.o: barber.c sharedMemory.h utility.h
	$(CC) $(CFLAGS) barber.c 

customer.o: sharedMemory.h utility.h customer.c
	$(CC) $(CFLAGS) customer.c 
## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
