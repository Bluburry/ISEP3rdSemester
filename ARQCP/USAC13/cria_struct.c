#include "saida.h"

static int	check_dirs(char **args) {
	int			ret = 1;
	struct stat	st;

	if (stat(args[1], &st) == -1 || !S_ISDIR(st.st_mode)) {
		printf("Erro, diretoria de leitura inexistente.\n");
		ret = 0;
	}
	for (int i = 0; args[3][i]; i++) {
		if (!isdigit(args[3][i])) {
			printf("Erro, numero de leituras incorreto.\n");
			ret = 0;
			break;
		}
	}
	if (ret && (stat(args[2], &st) == -1 || !S_ISDIR(st.st_mode))) {
		mkdir(args[2], 0775);
	}
	return (ret);
}

static int	get_num_lines(char *dir) {
	FILE			*fl;
    DIR 			*directory;
    struct dirent	*entry;
	char			*line = NULL, helper[PATH_MAX];
	int				n = 0;
	size_t			len = 0;

    directory = opendir(dir);
    if (directory == NULL) {
        printf("Erro a abrir a diretoria (get_num_lines)\n");
        exit (1);
    }

    while ((entry = readdir(directory)) != NULL) {
		//printf("entry: %s\n", entry->d_name);
        if (entry->d_type != DT_REG) continue;
		snprintf(helper, PATH_MAX * sizeof(char), "%s/%s", dir, entry->d_name);
		fl = fopen(helper, "r");
		if (fl == NULL) {
			perror("Erro ao aceder ao ficheiro de configuraçao (get_num_lines).");
			printf("Ficheiro de erro: %s\n", helper);
			exit(EXIT_FAILURE);
		}
		while (getline(&line, &len, fl) != -1) {
			n++;
		}
		fclose(fl);
    }
	
	free(line);
    closedir(directory);
	return (n);
}

//assume que nao sao criados ficheiros extra desde que começou
t_data	**set_up_saida(int num_args, char **args, int *num) {
	t_data			**data;
    DIR 			*directory;
	FILE			*fl;
    struct dirent	*entry;
	char			*line = NULL, helper[PATH_MAX];
	int				last_index;
	size_t			len = 0;

	if (num_args != 4) {
		printf("Erro no numero de argumentos de entrada.\n");
		exit(1);
	}

	if (!check_dirs(args)) exit(1);

	*num =  get_num_lines(args[1]);

	data = (t_data **) malloc(sizeof(t_data *) * (*num));
	if (data == NULL) {
		printf("Erro na alocaçao de memorias das structs (set_up_saida).\n");
		exit(1);
	}

	directory = opendir(args[1]);
	if (directory == NULL) {
		printf("Erro a abrir a diretoria (set_up_saida)\n");
		exit (1);
	}

	for (int i = -1, j = 0; (entry = readdir(directory)) != NULL && i < *num;) {
        if (entry->d_type != DT_REG) continue;
		snprintf(helper, sizeof(helper), "%s/%s", args[1], entry->d_name);
		fl = fopen(helper, "r");
		if (fl == NULL) {
			perror("Erro ao aceder ao ficheiro de configuraçao (set_up_saida).");
			printf("Ficheiro de erro: %s\n", helper);
			tear_down_saida(data, i);
			exit(EXIT_FAILURE);
		}

		while (getline(&line, &len, fl) != -1 && ++i < *num) {
			j = 0;
			//printf("For comparison/testing purposes:\nline:\n%s", line);

			data[i] = (t_data *) malloc(sizeof(t_data));
			if (data[i] == NULL) {
				tear_down_saida(data, i);
				printf("Erro de alocaçao de memoria para a struct (set_up_saida).\n");
				exit(1);
			}

			if ((data[i]->id = atoi(line)) == 0) {
				free(data[i]);
				tear_down_saida(data, i);
				printf("Erro ao ler o id do sensor (letra ou 0) (set_up_saida).\n");
				exit (EXIT_FAILURE);
			}

			while (line[j] != ',') j++;

			j++;
			if (!(line[j] >= '0' && line[j] <= '9')) {
				free(data[i]);
				tear_down_saida(data, i);
				printf("Erro ao ler o numero de leituras do sensor (set_up_saida).\n");
				exit (EXIT_FAILURE);
			}
			data[i]->wr_cntr = atoi(line + j);

			while (line[j] != ',') j++;

			last_index = ++j;
			while (line[j] != ',') j++;
			data[i]->type = (char *) malloc(sizeof(char) * (j - last_index + 1));
			if (data[i]->type == NULL) {
				free(data[i]);
				tear_down_saida(data, i);
				printf("Erro na alocaçao de memoria para tipo de sensor (set_up_saida).\n");
				exit(1);
			}
			memcpy(data[i]->type, line + last_index, j - last_index);
			data[i]->type[j - last_index] = 0;

			last_index = ++j;
			while (line[j] != ',')
				j++;
			data[i]->unit = (char *) malloc(sizeof(char) * (j - last_index + 1));

			if (data[i]->unit == NULL) {
				free(data[i]->type);
				free(data[i]);
				tear_down_saida(data, i);
				printf("Erro na alocaçao de memoria para tipo de unidade (set_up_processador).\n");
				exit(1);
			}
			memcpy(data[i]->unit, line + last_index, j - last_index);
			data[i]->unit[j - last_index] = 0;

			j = strlen(line) - 1;
			while(line[j] != ',') j--;
			if (line[j + 1] < '0' || line[j + 1] > '9')
				data[i]->median = -1;
			else
				data[i]->median = atoi(line + j + 1);

			//printf("%d,%d,%s,%s,%d\n\n\n", data[i]->id, data[i]->wr_cntr, data[i]->type, data[i]->unit, data[i]->median);
		}
		if (!feof(fl)) {
			printf("Erro de leitura do ficheiro (set_up_saida).\n");
			exit(EXIT_FAILURE);
		}
		fclose(fl);
	}

	free(line);
	closedir(directory);
	return (data);
}

void	tear_down_saida(t_data **data, int n) {
	for (int i = 0; i < n; i++) {
		free(data[i]->type);
		free(data[i]->unit);
		free(data[i]);
	}
	free(data);
}
