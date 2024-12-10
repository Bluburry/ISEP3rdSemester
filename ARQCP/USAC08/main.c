#include "asm.h"

int main(int argc, char **argv)
{
    int n = atoi(argv[4]);
    char* file = argv[1];

	char** data = readData(file, n);

	for (int i = 0; i < 18; i++)
	{
		printf("%s", data[i]);
	}
	
	int i = -1;
	while (++i < 18)
        free(data[i]);
    free(data);

	return (0);
}
