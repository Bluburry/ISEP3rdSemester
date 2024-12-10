#include "arqcp.h"

int	main(int argc, char **argv) {
	int	n_struct, n_leituras;
	t_sensor **sensors = set_up_processador(argc, argv, &n_struct, &n_leituras);
	printf("struct vals:\n");
	for (int i = 0; i < n_struct; i++) {
		printf("%d#%s#%s#%d#%d#%d\n", sensors[i]->id, sensors[i]->type, sensors[i]->unit, sensors[i]->buffer->crclr_size, sensors[i]->median_size, sensors[i]->timeout);
	}
	tear_down_processador(sensors, n_struct);
	return (0);
}