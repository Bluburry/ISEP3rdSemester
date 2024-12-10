#ifndef	ASM_H
# define ASM_H
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <string.h>
void enqueue_value(int* array, int length, int* read, int* write, int value);
#endif