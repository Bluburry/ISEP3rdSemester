#include "asm.h"
int main()
{
	int ptr[] = {1,0,0};
	int length = 3;
	int a = 0, b = 1;
	int *read = &a, *write = &b;
	int newPtr[] = {0};
	int num = 1;
	
	printf("Value meant to be returned: %d\n", move_num_vec(ptr, length, read, write, num, newPtr));

	printf("Modified ptr:\n");
	for (int i = 0; i < length; i++){
		printf("%d\n", ptr[i]);
	}
	printf("Modified newPtr:\n");
	for (int i = 0; i < num; i++)
	{
		printf("%d\n", newPtr[i]);
	}
	
	return (0);
}