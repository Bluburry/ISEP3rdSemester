#include <stdio.h>
#include "asm.h"


int main(){

    int string1[] = {-1,-3,-2};
    int string2 = 3;

    array_sort(string1, string2);

	 int i;

for (i = 0; i < string2; i++) {
  printf("%d\n", string1[i]);
}

    




    return 0;
}