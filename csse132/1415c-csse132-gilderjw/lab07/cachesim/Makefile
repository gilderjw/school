all: cachesim

cachesim: cachesim.o cachelab-tools.o
	gcc -std=gnu99 -g -Wall cachesim.o cachelab-tools.o -o cachesim -lm 

cachesim.o: cachesim.c
	gcc -std=gnu99 -g -Wall -c cachesim.c

cachelab-tools.o: cachelab-tools.c  cachelab-tools.h
	gcc -std=gnu99 -g -Wall -c cachelab-tools.c 

clean:
	rm -rf *.o
	rm cachesim
