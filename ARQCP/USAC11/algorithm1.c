#include "arqcp.h"
#include <stdlib.h>

int algorithm1(int argc, char **argv)
{
	int nSensores, n;
	int *vec; 
    char *file = argv[1];

	t_sensor **sensors = set_up_processador(argc, argv, &nSensores, &n);

	char **data = readData(file, n);
	insertDataReceived(n, nSensores, data, sensors);

	for (int i = 0; i < nSensores; i++)
	{		
		if(sensors[i]->median == -1) continue;
		vec = (int *) malloc(sizeof(int) * sensors[i]->median_size);
		if (vec == NULL) {
			tear_down_processador(sensors, nSensores);
			printf("Erro na alocaçao de memoria para o vetor da mediana\n");
			exit(EXIT_FAILURE);
		}
		memset(vec, 0, sensors[i]->median_size * sizeof(int));

		move_num_vec(sensors[i]->buffer->crclr_buffer, sensors[i]->buffer->crclr_size, \
			&sensors[i]->buffer->crclr_read, &sensors[i]->buffer->crclr_write, \
			sensors[i]->median_size, vec);

		sensors[i]->median = mediana(vec, sensors[i]->median_size);
		sensors[i]->write_counter++;
		//printf("%d", sensors[i]->median);
		free(vec);
	}
	
	serializar_struct_processador(sensors, nSensores, argv[3]);
	tear_down_processador(sensors, nSensores);

	int i = -1;
	while (++i < n)
        free(data[i]);
    free(data);

	return (0);
}