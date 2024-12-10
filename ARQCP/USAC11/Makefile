LIB	= include
CC	= gcc -c -Wall -Werror -Wextra -fanalyzer -g -I $(LIB)
ASM = -z noexecstack

USAC11: algorithm1.o mediana.o buffer_circular.o enqueue_value.o read_data.o cria_struct.o serializar.o insert_data.o main.o
	gcc algorithm1.o mediana.o buffer_circular.o enqueue_value.o read_data.o cria_struct.o serializar.o insert_data.o main.o $(ASM) -o USAC11

algorithm1.o: algorithm1.c
	$(CC) algorithm1.c -o algorithm1.o


cria_struct.o: cria_struct.c
	$(CC) cria_struct.c -o cria_struct.o

read_data.o: read_data.c
	$(CC) read_data.c -o read_data.o

serializar.o: serializar.c
	$(CC) serializar.c -o serializar.o

insert_data.o: insert_data.c
	$(CC) insert_data.c -o insert_data.o

mediana.o: mediana.s
	$(CC) mediana.s -o mediana.o

buffer_circular.o: buffer_circular.s
	$(CC) buffer_circular.s -o buffer_circular.o

enqueue_value.o: enqueue_value.s
	$(CC) enqueue_value.s -o enqueue_value.o

main.o: main.c
	$(CC) main.c -o main.o

clean:
	rm -rf *.o USAC11
	rm intermedio/*

run: USAC11
	./USAC11 etc/ttyS0 config intermedio 13

debug: USAC11
	gdb -tui --args USAC11 etc/ttyS0 config intermedio 13

leaks:
	$(VG) ./USAC11 etc/ttyS0 config intermedio 13
