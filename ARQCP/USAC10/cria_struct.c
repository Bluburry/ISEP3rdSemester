#include "arqcp.h"

static int	check_dirs(char **args) {
	int			ret = 1;
	struct stat	st;

	if (stat(args[1], &st) == -1 || !S_ISREG(st.st_mode)) {
		printf("Erro, ficheiro de leitura inexistente.\n");
		ret = 0;
	}
	if (stat(args[2], &st) == -1 || !S_ISREG(st.st_mode)) {
		printf("Erro, ficheiro de configuraçao inexistente.\n");
		ret = 0;
	}
	for (int i = 0; args[4][i]; i++) {
		if (!isdigit(args[4][i])) {
			printf("Erro, numero de leituras incorreto.\n");
			ret = 0;
			break;
		}
	}
	if (ret && (stat(args[3], &st) == -1 || !S_ISDIR(st.st_mode))) {
		mkdir(args[3], 0775);
	}
	return (ret);
}

static int	get_num_lines(char *filename) {
	FILE	*fl;
	char	*line = NULL;
	int		n = 0;
	size_t	len = 0;

	fl = fopen(filename, "r");
	if (fl == NULL) {
		perror("Erro a abrir ficheiro.");
		exit(1);
	}
	while (getline(&line, &len, fl) != -1) {
		n++;
	}
	free(line);
	fclose(fl);
	return (n);
}

/**
 * @brief cria dinamicamente um array de structs a 
 serem usadas no resto do programa.
 * @param num_args numero de argumentos do main.
 * @param args argumentos do main.
 * @param num_sensors endereço de memoria de uma variavel que ira 
 guardar o numero de sensores que serao lidos, serve tambem como 
 o numero de valores do array que sera retornado
 * @param num_sensors endereço de memoria de uma variavel que ira 
 guardar o numero de leituras a serem feitas
 * @return retorna um array de structs de tamanho num_sensors
*/
// estou a assumir que no ficheiro config os sensores estao ordenados 
t_sensor **set_up_processador(int num_args, char **args, int *num_sensors, int *num_leituras) {
	t_sensor	**sensors;
	FILE		*fl;
	char		*line = NULL, helper[HELPER_MAX];
	int			last_index, helper_num;
	size_t		len = 0;

	if (num_args != 5) {
		printf("Erro no numero de argumentos de entrada.\n");
		exit(1);
	}

	if (!check_dirs(args)) exit(1);

	*num_sensors =  get_num_lines(args[2]);

	if ((*num_leituras = atoi(args[4])) == 0) {
		printf("Erro ao converter o numero de leituras.\n");
		exit (1);
	}

	sensors = (t_sensor **) malloc(sizeof(t_sensor *) * (*num_sensors));
	if (sensors == NULL) {
		printf("Erro na alucaçao de memorias das structs");
		exit(1);
	}

	fl = fopen(args[2], "r");
	if (fl == NULL) {
		perror("Erro ao aceder ao ficheiro de configuraçao (set_up_processador).");
		exit(EXIT_FAILURE);
	}

	for (int i = 0, j = 0; i < *num_sensors; i++, j = 0) {
		if (getline(&line, &len, fl) == - 1) {
			perror("Erro a ler ficheiro de configuaçao (set_up_processador).");
			tear_down_processador(sensors, i);
			exit(1);
		}

		//printf("For comparison/testing purposes:\nline:\n%s", line);

		sensors[i] = (t_sensor *) malloc(sizeof(t_sensor));
		if (sensors[i] == NULL) {
			printf("Erro de alocaçao de memoria para a struct.\n");
			exit(1);
		}

		sensors[i]->buffer = (t_crclr *) malloc(sizeof(t_crclr));
		if (sensors[i] == NULL) {
			printf("Erro de alocaçao de memoria para a struct do buffer circular (set_up_processador).\n");
			exit(1);
		}
		sensors[i]->write_counter = 0;
		sensors[i]->prev_time = -1;

		last_index = 0;
		while (line[j] != '#')
			j++;
		strncpy(helper, line, j);
		helper[j] = 0;
		if ((sensors[i]->id = atoi(helper)) == 0) {
			printf("Erro na leitura dos valores de id (set_up_processador).\n");
			exit(1);
		}
		
		last_index = ++j;
		while (line[j] != '#')
			j++;
		sensors[i]->type = (char *) malloc(sizeof(char) * (j - last_index + 1));
		if (sensors[i]->type == NULL) {
			printf("Erro na alocaçao de memoria para tipo de sensor (set_up_processador).\n");
			exit(1);
		}
		memcpy(sensors[i]->type, line + last_index, j - last_index);
		sensors[i]->type[j - last_index] = 0;

		last_index = ++j;
		while (line[j] != '#')
			j++;
		sensors[i]->unit = (char *) malloc(sizeof(char) * (j - last_index + 1));
		if (sensors[i]->unit == NULL) {
			printf("Erro na alocaçao de memoria para tipo de unidade (set_up_processador).\n");
			exit(1);
		}
		memcpy(sensors[i]->unit, line + last_index, j - last_index);
		sensors[i]->unit[j - last_index] = 0;

		last_index = ++j;
		while (line[j] != '#')
			j++;
		strncpy(helper, line + last_index, j - last_index);
		helper[j - last_index] = 0;
		if ((helper_num = atoi(helper)) == 0) {
			printf("Erro na leitura do tamanho do buffer circular (set_up_processador).\n");
			exit(1);
		}
		sensors[i]->buffer->crclr_size = helper_num;
		sensors[i]->buffer->crclr_write = 0;
		sensors[i]->buffer->crclr_read = 0;
		sensors[i]->buffer->crclr_buffer = (int *) malloc(sizeof(int) * helper_num);
		if (sensors[i]->buffer->crclr_buffer == NULL) {
			printf("Erro na criaçao do buffer circular (set_up_processador).\n");
			exit(1);
		}
		memset(sensors[i]->buffer->crclr_buffer, 0, helper_num * sizeof(int));

		last_index = ++j;
		while (line[j] != '#')
			j++;
		strncpy(helper, line + last_index, j - last_index);
		helper[j - last_index] = 0;
		if ((helper_num = atoi(helper)) == 0) {
			printf("Erro na leitura do numero de elementos para a mediana (set_up_processador).\n");
			exit(1);
		}
		sensors[i]->median_size = helper_num;
		sensors[i]->median = 0;

		last_index = ++j;
		if ((helper_num = atoi(line + last_index)) == 0) {
			printf("Erro na leitura do timeout (set_up_processador).\n");
			exit(1);
		}
		sensors[i]->timeout = helper_num;

		//printf("struct vals:\n%d#%s#%s#%d#%d#%d\n\n\n", sensors[i]->id, sensors[i]->type, sensors[i]->unit, sensors[i]->buffer->crclr_size, sensors[i]->median_size, sensors[i]->timeout);
	}
	free(line);
	fclose(fl);
	return (sensors);
}

void	tear_down_processador(t_sensor **sensors, int n) {
	for (int i = 0; i < n; i++) {
		free(sensors[i]->type);
		free(sensors[i]->unit);
		free(sensors[i]->buffer->crclr_buffer);
		free(sensors[i]->buffer);
		free(sensors[i]);
	}
	free(sensors);
}
