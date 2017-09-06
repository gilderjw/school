CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm

## Name the executable program, list source files
PROG = inventory
SRCS = inventoryUpdate.c inv.h

## Build the program from the object files (-o option)
$(PROG): inventoryUpdate.o inv.h
	$(CC) inventoryUpdate.c inv.h -o $(PROG) $(LDFLAGS)

inventoryUpdate.o: inventoryUpdate.c
	$(CC) $(CFLAGS) inventoryUpdate.c

## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
