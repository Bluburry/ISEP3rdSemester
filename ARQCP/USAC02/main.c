#include "asm.h"
int main() {
	int length = 10;
	int	array[length];
	int a = 0, b = 0;
	int *read = &a, *write = &b;

	printf("testing function filling array\n");
	for (int i = 0; i < length; i++)
	{
		enqueue_value(array, length, read, write, i);
	}

	printf("array values:\n");
	for (int i = 0; i < length; i++)
		printf("array[%d] = %d | ", i, array[i]);
	printf("\n*read: %p | read = %d\n*write: %p | write = %d\n",\
			read, *read, write, *write);
	return (0);
}
