CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm -pthread

## Name the executable program, list source files
PROG = airlinereservation
SRCS = airlinereservation.c airlinereservation.h


all: $(PROG) client

## Build the program from the object files (-o option)
$(PROG): airlinereservation.o airplane.o
	$(CC) airlinereservation.o airplane.o -o $(PROG) $(LDFLAGS)

client: input.o airlinereservation.o airplane.o
	$(CC) airplane.o input.o -o client $(LDFLAGS)

input.o: input.c input.h
		$(CC) $(CFLAGS) input.c

airlinereservation.o: airlinereservation.c airlinereservation.h airplane.o
	$(CC) $(CFLAGS) airlinereservation.c

airplane.o: airplane.c airplane.h
	$(CC) $(CFLAGS) airplane.c

## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
