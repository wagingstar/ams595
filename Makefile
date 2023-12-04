CC = g++
CFLAGS = -std=c++11 -Wall
OBJ = pi_approx.o approximations.o HW2main.o
EXEC = HW2main

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(EXEC)
