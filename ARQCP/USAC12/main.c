#include "saida.h"

int	main(int argc, char **argv) {
	int	n;
	t_data **data = set_up_saida(argc, argv, &n);
	printf("struct vals:\n");
	for (int i = 0; i < n; i++) {
		printf("%d,%d,%s,%s,%d\n", data[i]->id, data[i]->wr_cntr, data[i]->type, data[i]->unit, data[i]->median);
	}
	tear_down_saida(data, n);
	return (0);
}