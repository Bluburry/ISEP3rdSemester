#include "arqcp.h"

static void	fill_file(char *file, int *i, int helper) {
	int n = *i;
	file[n++] = helper / 10 + 48;
	file[n++] = helper - (helper / 10 * 10) + 48;
	*i = n;
}

static char	*get_file_name() {
	char		*file;
	int			helper, i = 0;
	time_t		t = time(NULL);
	struct tm	datetime = *localtime(&t);

	file = (char *) malloc(sizeof(char) * (FILE_SIZE + 1));
	if (file == NULL) {
		printf("Erro de alocaçao de memoria (serializar_struct_processador get_file_name).\n");
		exit(EXIT_FAILURE);
	}
	file[FILE_SIZE] = 0;
	helper = datetime.tm_year + 1900;
	for (int j = 1000; i < 4; i++, j /= 10) file[i] = helper / j - (helper / (j * 10) * 10) + 48;
	helper = datetime.tm_mon + 1;
	fill_file(file, &i, helper);
	helper = datetime.tm_mday;
	fill_file(file, &i, helper);
	helper = datetime.tm_hour;
	fill_file(file, &i, helper);
	helper = datetime.tm_min;
	fill_file(file, &i, helper);
	helper = datetime.tm_sec;
	fill_file(file, &i, helper);
	//printf("i: %d\n", i);
	strcpy(file + i, "_sensors.txt");
	return (file);
}

static char	*get_file_dir(char *dir) {
	char	*file, *file_dir;
	int		n;

	file = get_file_name();
	//printf("%s\n", file);
	n = strlen(dir);
	file_dir = (char *) malloc(sizeof(char) * (n + FILE_SIZE + 2));
	if (file_dir == NULL) {
		printf("Erro de alocaçao de memoria (serializar_struct_processador get_file_dir).\n");
		exit(EXIT_FAILURE);
	}
	memcpy(file_dir, dir, n);
	file_dir[n] = '/';
	memcpy(file_dir + n + 1, file, FILE_SIZE + 1);
	free(file);
	//printf("%s\n", file_dir);
	return (file_dir);
}

void	serializar_struct_processador(t_sensor **sensors, int num, char *dir) {
	char	*file_dir;
	FILE	*fl;

	file_dir = get_file_dir(dir);
	fl = fopen(file_dir, "w");
	if (fl == NULL) {
		perror("Erro ao abrir o ficheiro (serializar_struct_processador)");
		tear_down_processador(sensors, num);
		exit(EXIT_FAILURE);
	}
	for (int i = 0; i < num; i++) {
		if (sensors[i]->median >= 0)
			fprintf(fl, "%d,%d,%s,%s,%d#\n", sensors[i]->id, sensors[i]->write_counter, sensors[i]->type, sensors[i]->unit, sensors[i]->median);
		else
			fprintf(fl, "%d,%d,%s,%s,error#\n", sensors[i]->id, sensors[i]->write_counter, sensors[i]->type, sensors[i]->unit);
	}
	free(file_dir);
	fclose(fl);
}