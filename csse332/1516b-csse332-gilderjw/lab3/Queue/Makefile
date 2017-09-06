CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm

## Name the executable program, list source files
PROG = Queue
SRCS = driver.c queue.c queue.h

## Build the program from the object files (-o option)
$(PROG): queue.o driver.o
	$(CC) queue.o driver.o -o $(PROG) $(LDFLAGS)

queue.o: queue.c queue.h
	$(CC) $(CFLAGS) queue.c

driver.o: driver.c
	$(CC) $(CFLAGS) driver.c

## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
