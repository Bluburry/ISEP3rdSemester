LIB	= include
CC	= gcc -c -Wall -Werror -Wextra -fanalyzer -g -I $(LIB)
VG	= valgrind --leak-check=full --show-leak-kinds=all -s --track-origins=yes

usac12: cria_struct_saida.o main.o
	gcc cria_struct_saida.o main.o -o usac12

cria_struct_saida.o: cria_struct_saida.c
	$(CC) cria_struct_saida.c -o cria_struct_saida.o

main: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o usac12

run: usac12
	./usac12 intermedio output 60000

debug: usac12
	gdb -tui --args usac12 intermedio output 60000

leaks:
	$(VG) ./usac12 intermedio output 60000

.SILENT:
