CFLAGS=-std=c11 -g -static

9cc: 9cc.c

test: 9cc.c
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test clean
