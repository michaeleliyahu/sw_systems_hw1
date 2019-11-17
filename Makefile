
all: maind mains mymathd mymaths

mains: main.o libmyMath.a 
	gcc -o mains main.o libmyMath.a

maind: main.o libmyMath.so
	gcc -o maind main.o ./libmyMath.so

mymaths:libmyMath.a

libmyMath.a: power.o basicMath.o
	ar -rcs libmyMath.a power.o basicMath.o

mymathd: libmyMath.so

libmyMath.so: power.o basicMath.o myMath.h
	gcc -shared -o libmyMath.so power.o basicMath.o

main.o: main.c
	gcc -c main.c

power.o: power.c myMath.h
	gcc -c power.c

basicMath.o: basicMath.c myMath.h
	gcc -c basicMath.c	

.PHONY: clean all mymaths mymathd

clean: 
	rm -f *.o *.a *.so maind mains 
