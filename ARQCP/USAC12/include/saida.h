#ifndef SAIDA_H
# define SAIDA_H

# include <time.h>
# include <ctype.h>
# include <stdio.h>
# include <fcntl.h>
# include <unistd.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <limits.h>
# include <dirent.h>
# include <sys/stat.h>
# include <sys/types.h>

# define HELPER_MAX	5
# define TYPE_SIZE	50
# define UNIT_SIZE	40

typedef struct {
	int		id;
	int		wr_cntr;
	char	*type;
	char	*unit;
	int		median;
}	t_data;

t_data	**set_up_saida(int num_args, char **args, int *num_sensors);
void	tear_down_saida(t_data **data, int n);

#endif