CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=basicMath.o power.o
FLAGS= -Wall

all: libmyMath.so libmyMath.a mains maind
mymaths: libmyMath.a
mymathd: libmyMath.so
	
mains: $(OBJECTS_MAIN) libmyMath.a 
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
libmyMath.so: $(OBJECTS_LIB)
	$(CC) $(FLAGS) -fPIC -c basicMath.c power.c
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)
libmyMath.a: $(OBJECTS_LIB)
	$(AR) rc libmyMath.a $(OBJECTS_LIB)	
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind
