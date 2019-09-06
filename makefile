CC = g++
CFLAGS = -g -Wall

TARGET = myexe

all: myfunc.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) myfunc.o main.o

myfunc.o: myfunc.cpp myfunc.h
	$(CC) $(CFLAGS) -c myfunc.cpp

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) -f *.o $(TARGET)