LIB	= include
CC	= gcc -c -Wall -Werror -Wextra -fanalyzer -g -I $(LIB)
VG	= valgrind --leak-check=full --show-leak-kinds=all -s --track-origins=yes

usac07: cria_struct_processador.o main.o
	gcc cria_struct_processador.o main.o -o usac07

cria_struct_processador.o: cria_struct_processador.c
	$(CC) cria_struct_processador.c -o cria_struct_processador.o

main: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o usac07

run: usac07
	./usac07 etc/ttyS0 config intermedio 30

debug: usac07
	gdb -tui --args usac07 etc/ttyS0 config intermedio 30

leaks:
	$(VG) ./usac07 etc/ttyS0 config intermedio 30

.SILENT:
