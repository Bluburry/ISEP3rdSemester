#include <stdio.h>
#include "asm.h"

char input[100]="sensor_id:8#type:atmospheric_temperature#value:21.60#unit:celsius#time:2470030"; 
char token1[10] ="sensor_id:";
char token2[10] ="type:";
char token3[10] ="value:";
char token4[10] ="unit:";
char token5[10] ="time:";

int output=0;

void printInformation(char token[], int result) {
	if (result!=0){
		printf("Valor do token [%s", token);
		printf("]: %d \n", output);
	} else {
	printf("O valor do token [%s", token);
	printf("] não pode ser registado. \n");
	}
}


int main(void) {

char* ptr1 = input;
char* tk1 = token1;
char* tk2 = token2;
char* tk3 = token3;
char* tk4 = token4;
char* tk5 = token5;
int* ptr3 = &output;

int result = 0;


printf("=== AC01 === \n");
printf("Informação gerada: %s \n", input);
result = extract_token(ptr1, tk1, ptr3);
printInformation(token1, result);
result = extract_token(ptr1, tk2, ptr3);
printInformation(token2, result);
result = extract_token(ptr1, tk3, ptr3);
printInformation(token3, result);
result = extract_token(ptr1, tk4, ptr3);
printInformation(token4, result);
result = extract_token(ptr1, tk5, ptr3);
printInformation(token5, result);
printf("======== \n");

return 0;
}
