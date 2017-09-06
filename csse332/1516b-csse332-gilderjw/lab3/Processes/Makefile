CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm

## Name the executable program, list source files
PROG = processes
SRCS = processes.c processes.h myCopy.c

all: myCopy $(PROG)

myCopy: myCopy.o
	$(CC) myCopy.o -o myCopy -g

myCopy.o: myCopy.c
	$(CC) myCopy.c -c -g

## Build the program from the object files (-o option)
$(PROG): processes.o
	$(CC) processes.o -o $(PROG) $(LDFLAGS)

processes.o: processes.c processes.h
	$(CC) $(CFLAGS) processes.c

## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
