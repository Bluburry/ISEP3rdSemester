#include "arqcp.h"
#include "saida.h"

int	main(int argc, char **argv) {
	int i = strlen(argv[0]) - 1;
	while (argv[0][i] != '/') i--;
	if (!strcmp(argv[0] + i + 1, "ProcessadorDeDados"))
		algorithm1(argc, argv);
	else if (!strcmp(argv[0] + i + 1, "SaidaDeDados"))
		serializar_saida(argc, argv);
	else {
		printf("Ocorreu um erro, nome de executavel nao esperado.\n");
		return (1);
	}
	return (0);
}