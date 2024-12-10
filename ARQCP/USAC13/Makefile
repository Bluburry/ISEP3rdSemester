LIB	= include
CC	= gcc -c -Wall -Werror -Wextra -fanalyzer -g -I $(LIB)
VG	= valgrind --leak-check=full --show-leak-kinds=all -s --track-origins=yes

usac13: cria_struct.o escrita_final.o main.o
	gcc cria_struct.o escrita_final.o main.o -o usac13

cria_struct.o: cria_struct.c
	$(CC) cria_struct.c -o cria_struct.o

escrita_final.o: escrita_final.c
	$(CC) escrita_final.c -o escrita_final.o

main: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o usac13
	rm output/*

run: usac13
	./usac13 intermedio output 60000

debug: usac13
	gdb -tui --args usac13 intermedio output 60000

leaks:
	$(VG) ./usac13 intermedio output 60000

.SILENT:
