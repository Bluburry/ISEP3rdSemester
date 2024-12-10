package project.ui.console;

import project.application.controller.ImportWaterPlanFileController;
import project.domain.WaterInstructions;
import project.ui.console.utils.Utils;

import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.regex.Pattern;

public class ImportWaterPlanFileUI implements Runnable {

    private final Scanner read = new Scanner(System.in);
    private final ImportWaterPlanFileController controller = new ImportWaterPlanFileController();

    @Override
    public void run() {
        boolean fileImported = false;
        boolean answer = true;
        String input;

        System.out.println("\n== Bem-vindo ao menu de importação de um ficheiro que contenha um plano de rega! ==" +
                "\nApesar de isto poder ser mudado no futuro, queremos relembrar que o ficheiro que tentar importar deverá seguir o seguinte formato:");
        System.out.println("[Horas de rega]\n" +
                "\n" +
                "Nesta linha são definidos as horas que se inicia um ciclo de rega, por exemplo: " +
				"8:30 e 17:00, significa que existem dois ciclos de rega diários que se iniciam respetivamente às 8:30 e 17:00. \n" +
                "\n" +
                "[parcela, duração, regularidade]\n" +
                "\n" +
                "Existe uma linha para cada parcela a rega. A parcela identifica o sector a ser regado (controlado por uma electroválvula); " +
				"a duração, o tempo em minutos que a parcela deve receber rega; a regularidade, " +
				"a fórmula de recorrência que define os dias que a parcela deve ser regada {todos, ímpares, pares, a cada 3 dias}; " +
				" e, opcionalmente, fator de produçao a ser usado; e recorrencia de aplicaçao do fator de produçao {numero de dias entre aplicaçoes} \n" +
                "== / ==\n");

        if (!(WaterInstructions.getInstance().getDate().equalsIgnoreCase("1/1/2000"))) {
            do {
                System.out.print("[Alerta] O sistema já tem um ficheiro guardado. Criar um novo irá eliminar o antigo." +
                        "\nQueres prosseguir (S/N)? ");

                input = read.next();
            } while (!Utils.validateYesNoAnswer(input));
            answer = getAnswer(input);
        }
        if (answer) {
            while (!fileImported) {
                String filePath = requestsFilePath();

                if (Utils.validateFile(filePath)) {
                    try {
                        controller.importPlanFile(filePath);
                    } catch (FileNotFoundException e) {
                        System.out.println("\nFicheiro não encontrado!");
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }

                    fileImported = true;
                } else {
                    System.out.println("\nO ficheiro não foi importado, tenta novamente...");
                }
            }
            System.out.println("\nFicheiro Importado com sucesso!");
        }
    }

    public String requestsFilePath() {
        System.out.print("Escreve o caminho do ficheiro: ");
        return read.next();
    }

    public boolean getAnswer(String input){
        return Pattern.matches("^[Ss]{1}$|^[Ss]{1}[i]{1}[m]$|^[Yy]{1}$|^[Yy]{1}[e]{1}[s]{1}$", input);
    }

}
