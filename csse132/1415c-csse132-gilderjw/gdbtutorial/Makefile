test: gdbexample.o author.o
	gcc gdbexample.o author.o -o test -g

gdbexample.o: gdbexample.c author.h
	gcc gdbexample.c -m32 -c -g

author.o: author.c author.h
	gcc author.c -m32 -c -g

clean: 
	rm -f *.o test
