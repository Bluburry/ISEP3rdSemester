#include "saida.h"

static int	check_new_content(char *dir) {
    DIR 			*directory;
    struct dirent	*entry;

    directory = opendir(dir);
    if (directory == NULL) {
        printf("Erro a abrir a diretoria (get_num_lines)\n");
        exit (1);
    }

    while ((entry = readdir(directory)) != NULL) {
        if (entry->d_type == DT_REG) {
			closedir(directory);
			return (1);
		}
    }
	
    closedir(directory);
	return (0);
}

static int	clean_folder(char *dir) {
    DIR 			*directory;
    struct dirent	*entry;
	char			helper[PATH_MAX];

    directory = opendir(dir);
    if (directory == NULL) {
        printf("Erro a abrir a diretoria (get_num_lines)\n");
        exit (1);
    }

    while ((entry = readdir(directory)) != NULL) {
        if (entry->d_type != DT_REG) continue;
		snprintf(helper, PATH_MAX * sizeof(char), "%s/%s", dir, entry->d_name);
		if (remove(helper) == -1) {
			perror("Erro a apagar ficheiro");
			printf("Ficheiro de erro: %s\n", helper);
			closedir(directory);
			return (0);
		}
    }
	
    closedir(directory);
	return (1);
}

static void	fill_file(char *file, int *i, int helper) {
	int n = *i;
	file[n++] = helper / 10 + 48;
	file[n++] = helper - (helper / 10 * 10) + 48;
	*i = n;
}

static char	*get_file_name() {
	char		*file;
	int			helper, i = 8;
	time_t		t = time(NULL);
	struct tm	datetime = *localtime(&t);

	file = (char *) malloc(sizeof(char) * (FILE_SIZE + 1));
	if (file == NULL) {
		printf("Erro de alocaçao de memoria (serializar_struct_processador get_file_name).\n");
		exit(EXIT_FAILURE);
	}
	file[FILE_SIZE] = 0;
	strcpy(file, "sensors_");
	helper = datetime.tm_year + 1900;
	for (int j = 1000; i < 12; i++, j /= 10) file[i] = helper / j - (helper / (j * 10) * 10) + 48;
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
	strcpy(file + i, ".txt");
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

void	serializar_saida(int num_args, char **args) {
	char	*file_dir;
	FILE	*fl;
	int		n, tempo;
	t_data	**data;

	if ((tempo = atoi(args[3])) == 0) {
		printf("Erro ao converter o tempo.\n");
		exit (1);
	}
	
	while (1) {
		usleep(tempo);
		data = NULL;
		// acrescentar algo para verificar se tem novo conteudo ?
		if (!check_new_content(args[1]))
			break; // mais facil para demonstrar e testar
			// continue; // assumo que seria o comportamento devido para esta funçao
		data = set_up_saida(num_args, args, &n);
		// apagar o conteudo da pasta depois de lida?
		if (!clean_folder(args[1])) {
			tear_down_saida(data, n);
			exit(EXIT_FAILURE);
		}

		file_dir = get_file_dir(args[2]);
		fl = fopen(file_dir, "w");
		if (fl == NULL) {
			perror("Erro ao abrir o ficheiro (serializar_saida)");
			tear_down_saida(data, n);
			exit(EXIT_FAILURE);
		}

		for (int i = n - 1, c = 0; i >= 0; i--, c = 0) {
			for (int j = n - 1; j > i; j--) {
				if (data[i]->id == data[j]->id) {
					c = 1;
					break;
				}
			}
			if (c)
				continue;
			// nao encontrei info sobre formataçao do ficheiro, entao utilizei da usac10
			fprintf(fl, "%d,%d,%s,%s,",data[i]->id, data[i]->wr_cntr, data[i]->type, data[i]->unit);

			if (data[i]->median < 0)
				fprintf(fl, "error#\n");
			else if (data[i]->median == 0)
				fprintf(fl, "0#\n");
			else {
				if (data[i]->median % 100 > 10)
					fprintf(fl, "%d.%d#\n", data[i]->median / 100, data[i]->median % 100);
				else
					fprintf(fl, "%d.0%d#\n", data[i]->median / 100, data[i]->median % 100);
			}
		}
		free(file_dir);
		fclose(fl);
		tear_down_saida(data, n);
		//break;
	}
}
