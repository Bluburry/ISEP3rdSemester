#include "header.h"

int	main(int argc, char **argv) {
	int	n_struct, n_leituras;
	t_sensor **sensors = set_up_processador(argc, argv, &n_struct, &n_leituras);
	static char *arr[] = {"sensor_id:4#type:atmospheric_humidity#value:69.00#unit:percentage#time:24055",
					"sensor_id:7#type:atmospheric_temperature#value:19.30#unit:percentage#time:24055",
					"sensor_id:1#type:atmospheric_humidity#value:69.00#unit:percentage#time:24005",
					"sensor_id:4#type:atmospheric_humidity#value:68.00#unit:percentage#time:24055",
					"sensor_id:10#type:atmospheric_humidity#value:19.30#unit:percentage#time:24055"};
	insertDataReceived(5, n_struct, arr, sensors);
	for (int i = 0; i < n_struct; i++) {
		printf("Sensor: %d\n", sensors[i]->id);
		for (int j = 0; j < sensors[i]->buffer->crclr_size; j++) {
			printf("%d | ", sensors[i]->buffer->crclr_buffer[j]);
		}
		printf("\n");
	}
	tear_down_processador(sensors, n_struct);
	return (0);
}