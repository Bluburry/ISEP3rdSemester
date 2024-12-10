#include "arqcp.h"

char** readData(char* a, int n){
    FILE * fp;
    char * line = NULL;
    int i = 0, read;
    char **data = (char **) malloc(sizeof(char *) * (n));
    size_t len = 0;
    fp = fopen(a, "r");
    if(fp == NULL){
        printf("Erro\n");
        exit(1);   
    } 
    
    while(i != n){
        read = getline(&line, &len, fp);
        if(line[0] == '\n') continue;
        data[i] = (char *) malloc(sizeof(char) * (read + 1));
        memcpy(data[i], line, read+1);
        //printf("data[%d]: %s\n", i, data[i]);
        i++;
    }

    free(line);
    fclose(fp);

    return data;
}