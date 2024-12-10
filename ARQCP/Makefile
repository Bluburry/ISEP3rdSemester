LIB_S	= USAC13/include
LIB_P	= USAC11/include
CC		= gcc -c -Wall -Wextra -fanalyzer -g -I $(LIB_P) -I $(LIB_S)
ASM		= -z noexecstack
RM		= rm -rf
VG		= valgrind --leak-check=full --show-leak-kinds=all -s --track-origins=yes

OUTPUT	= out
DIRS	= USAC11 USAC07 USAC08 USAC09 USAC10 USAC12 USAC13
VPATH	= $(DIRS)
 
SRCS	= 	cria_struct_processador function insertDataReceived serilizar_struct_processador algorithm1 \
			cria_struct_saida escrita_final buffer_circular enqueue_value mediana main
OBJS	= $(SRCS:%=%.o)
TARGET	= $(addprefix $(OUTPUT)/, $(OBJS))

all : compile

compile : $(OUTPUT) $(TARGET)

$(OUTPUT)/%.o : %.c
	$(CC) $< -o $@

$(OUTPUT)/%.o : %.s
	$(CC) $(ASM) $< -o $@

$(OUTPUT) :
	mkdir -p $(OUTPUT)

clean : 
	$(RM) $(OUTPUT)

pclean : clean
	$(RM) ProcessadorDeDados

sclean : clean
	$(RM) SaidaDeDados

re : clean all

processador: all
	gcc $(TARGET) $(ASM) -o ProcessadorDeDados

prun : processador
	./ProcessadorDeDados /dev/ttyS0 USAC11/config intermedio 100

pdebug : all
	gcc $(TARGET) $(ASM) -o ProcessadorDeDados
	gdb -tui --args ProcessadorDeDados /dev/ttyS0 USAC11/config intermedio 100

pleaks : all
	gcc $(TARGET) $(ASM) -o ProcessadorDeDados
	$(VG) ./ProcessadorDeDados /dev/ttyS0 USAC11/config intermedio 100

saida : all
	gcc $(TARGET) $(ASM) -o SaidaDeDados

srun : saida
	./SaidaDeDados intermedio output 60000

sdebug : all
	gcc $(TARGET) $(ASM) -o SaidaDeDados
	gdb -tui --args SaidaDeDados intermedio output 60000

sleaks : all
	gcc $(TARGET) $(ASM) -o SaidaDeDados
	$(VG) ./SaidaDeDados intermedio output 60000

fclean : clean
	$(RM) intermedio output
	$(RM) SaidaDeDados
	$(RM) ProcessadorDeDados

.PHONY :	all, clean, pclean, sclean, fclean, re, processador, \
			saida, prun, pdebug, pleaks, srun, sdebug, sleaks