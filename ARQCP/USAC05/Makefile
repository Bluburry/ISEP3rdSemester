CC = gcc -Wall -Wextra -c -g -fanalyzer
ASM = -z noexecstack

USAC05: asm.o main.o
	gcc asm.o main.o $(ASM) -o USAC05

asm.o: asm.s
	$(CC) asm.s -o asm.o

main.o: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o USAC05

run: USAC05
	./USAC05