LIB	= include
CC	= gcc -c -Wall -Werror -Wextra -fanalyzer -g -I $(LIB)
VG	= valgrind --leak-check=full --show-leak-kinds=all -s --track-origins=yes

usac10: cria_struct.o serilizar_struct_processador.o main.o
	gcc cria_struct.o serilizar_struct_processador.o main.o -o usac10

cria_struct.o: cria_struct.c
	$(CC) cria_struct.c -o cria_struct.o

serilizar_struct_processador.o: serilizar_struct_processador.c
	$(CC) serilizar_struct_processador.c -o serilizar_struct_processador.o

main: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o usac10
	rm intermedio/*

run: usac10
	./usac10 etc/ttyS0 config intermedio 30

debug: usac10
	gdb -tui --args usac10 etc/ttyS0 config intermedio 30

leaks:
	$(VG) ./usac10 etc/ttyS0 config intermedio 30

.SILENT:
