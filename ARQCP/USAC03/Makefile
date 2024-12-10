CC = gcc -Wall -Wextra -c -g -fanalyzer
ASM = -z noexecstack

USAC03: asm.o main.o
	gcc asm.o main.o $(ASM) -o USAC03

asm.o: asm.s
	$(CC) asm.s -o asm.o

main.o: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o USAC03

run: USAC03
	./USAC03