
CC = gcc
CFLAGS = -O3
LIBS = -lm -lgsl -lgslcblas


HEADERS = fft_func.h E5_func.h
OBJECTS = fft_func.o E5_func.o E5_main.o 
PROGRAM = E5

%.o: %.c $(HEADERS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

clean:
	rm -f *.o
	touch *.c


