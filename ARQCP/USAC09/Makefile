prog: main.o insertDataReceived.o asm.o cria_struct.o
	gcc main.o insertDataReceived.o asm.o cria_struct.o -z -noexecstack -o prog

main.o : main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o : asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

cria_struct.o: cria_struct.c
	gcc -g -Wall -Wextra -fanalyzer -c cria_struct.c -o cria_struct.o

insertDataReceived.o : insertDataReceived.c
	gcc -g -Wall -Wextra -fanalyzer -c insertDataReceived.c -o insertDataReceived.o

clean:
	rm -f *.o prog

run: prog
	./prog ttyS0 config intermedio 30
