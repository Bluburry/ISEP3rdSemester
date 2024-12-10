CC = gcc -Wall -Wextra -c -g -fanalyzer
ASM = -z noexecstack

USAC08: function.o main.o
	gcc function.o main.o $(ASM) -o USAC08

function.o: function.c
	$(CC) function.c -o function.o

main.o: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o USAC08

run: USAC08
	./USAC08