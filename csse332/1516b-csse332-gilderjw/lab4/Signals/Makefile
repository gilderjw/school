CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm -pthread

## Name the executable program, list source files
PROG = signals
SRCS = signals.c signals.h

## Build the program from the object files (-o option)
$(PROG): signals.o
	$(CC) signals.o -o $(PROG) $(LDFLAGS)

signals.o: signals.c signals.h
	$(CC) $(CFLAGS) signals.c

## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
