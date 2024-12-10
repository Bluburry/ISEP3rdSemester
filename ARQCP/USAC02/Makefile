CC = gcc -Wall -Werror -Wextra -c -g -fanalyzer
ASM = -z noexecstack
VG = valgrind --leak-check=full --show-leak-kinds=all -s --track-origins=yes

prog: asm.o main.o
	gcc asm.o main.o $(ASM) -o prog

asm.o: asm.s
	$(CC) asm.s -o asm.o

main.o: main.c
	$(CC) main.c -o main.o

testing.o: tests_to_run/testac02.c
	$(CC) tests_to_run/testac02.c -o testing.o

clean:
	rm -rf *.o prog tests

comp_tests: asm.o testing.o
	gcc asm.o testing.o $(ASM) -o tests

test: comp_tests
	./tests

leaks: prog
	$(VG) ./prog

debug: prog
	gdb -tui prog

run: prog
	./prog


.SILENT:

.PHONY: prog asm.o main.o clean comp_tests testing.o \
	leaks debug run re