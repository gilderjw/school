CC = gcc

CFLAGS = -Wall -c -g

## A list of options to pass to the linker. 
LDFLAGS = -Wall -g -lm -pthread

## Name the executable program, list source files
PROG = NumericalAnalysis
SRCS = compute.c compute.h threads.c threads.h file-processing.c file-processing.h main.c main.h

## Build the program from the object files (-o option)
$(PROG): compute.o file-processing.o main.o threads.o
	$(CC) compute.o main.o threads.o file-processing.o -o $(PROG) $(LDFLAGS)

compute.o: compute.c compute.h
	$(CC) $(CFLAGS) compute.c

file-processing.o: file-processing.c file-processing.h
	$(CC) $(CFLAGS) file-processing.c

main.o: main.c main.h
	$(CC) $(CFLAGS) main.c

threads.o: threads.c threads.h
	$(CC) $(CFLAGS) threads.c
## Remove all the compilation and debugging files
clean: 
	rm -f core $(PROG) *.o *~
