#ifndef ARQCP_H
# define ARQCP_H

# include <time.h>
# include <ctype.h>
# include <stdio.h>
# include <fcntl.h>
# include <unistd.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <limits.h>
# include <sys/stat.h>
# include <sys/types.h>

# define HELPER_MAX	5
# define FILE_SIZE	27
# define TYPE_SIZE	50
# define UNIT_SIZE	40

typedef struct {
	int	crclr_write;
	int	crclr_read;
	int	crclr_size;
	int	*crclr_buffer;
}	t_crclr;

typedef struct {
	int			id;
	char		*type;
	char		*unit;
	//int			*median_array;
	// ^ possivel que nao seja preciso afinal
	int			median_size;
	int			median; // = -1 caso haja erro, tmb começara com esse valor
	int			timeout;
	int			write_counter;
	t_crclr		*buffer;
	//struct tm	last_reading;
	// ^ possivel que tmb nao seja necessario
	int			prev_time;
}	t_sensor;

int			algorithm1(int argc, char **argv);

int			move_num_vec(int* array, int length, int *read, int *write, int num, int* vec);
int			mediana(int* vec, int num);
void 		enqueue_value(int* array, int length, int* read, int* write, int value);

char**		readData(char* a, int n);
void 		insertDataReceived(int nData, int nSensores, char **data, t_sensor **sensores);
t_sensor 	**set_up_processador(int num_args, char **args, int *num_sensors, int *num_leituras);
void		tear_down_processador(t_sensor **sensors, int n);
void		serializar_struct_processador(t_sensor **sensors, int num, char *dir);

#endif