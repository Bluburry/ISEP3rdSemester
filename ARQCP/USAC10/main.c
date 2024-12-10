#include "arqcp.h"

int	main(int argc, char **argv) {
	int	n_struct, n_leituras;
	t_sensor **sensors = set_up_processador(argc, argv, &n_struct, &n_leituras);
	serializar_struct_processador(sensors, n_struct, argv[3]);
	tear_down_processador(sensors, n_struct);
	return (0);
}