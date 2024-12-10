package project.ui.console;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import java.util.regex.Pattern;

import project.application.controller.WaterControllerController;
import project.ui.console.utils.Utils;


public class WaterControllerUI implements Runnable {

    private WaterControllerController ctrl;

    Scanner read = new Scanner(System.in);

    public WaterControllerUI() {
        ctrl = new WaterControllerController();
    }

    public void runSimulation() {
        String date, hour, answer;
        System.out.printf("Por favor escolha a data que quer usar, com o formato dia/mes/ano.\n");
        date = read.nextLine();
        while (true) {
            if (Utils.validateDate(date))
                break;
            else {
                System.out.printf("Data invalida, por favor insira novamente.\n(dia/mes/ano)\n");
                date = read.nextLine();
            }
        }
        System.out.printf("Por favor escolha a horas a que quer correr a simulaçao, seguindo o formato HH:mm.\n");
        hour = read.nextLine();
        while (true) {
            if (Utils.validateHours(hour))
                break;
            else {
                System.out.printf("Horas invalidas, por favor insira novamente.\n(HH:mm)\n");
                hour = read.nextLine();
            }
        }
        System.out.printf("Pretende seguir com esta data e hora?\n%s - %s\n", date, hour);
        answer = read.nextLine();
        while (true) {
            if (Utils.validateYesNoAnswer(answer))
                break;
            else {
                System.out.printf("Por favor responda sim ou nao.\n");
                answer = read.nextLine();
            }
        }
        if (Pattern.matches("^[Nn]{1}$|^[Nn]{1}[aã]{1}[o]$| ^[Nn]{1}[o]$", answer)) {
            System.out.printf("Pretende inserir nova data e hora?\n");
            answer = read.nextLine();
            while (true) {
                if (Utils.validateYesNoAnswer(answer))
                    break;
                else {
                    System.out.printf("Por favor responda sim ou nao.\n");
                    answer = read.nextLine();
                }
            }
            if (Pattern.matches("^[Nn]{1}$|^[Nn]{1}[aã]{1}[o]$| ^[Nn]{1}[o]$", answer))
                return;
            else
                runSimulation();
        } else {
            try {
                System.out.printf("Resultado: %s\n", ctrl.runSimulationWithGivenTime(date, hour));
            } catch (Exception e) {
                System.out.printf("%s\n", e.getMessage());
            }
        }
    }

    @Override
    public void run() {
        int choice;
        ctrl = new WaterControllerController();
        if (!ctrl.checkAlreadyImportedPlan()) {
            System.out.printf("\nPor favor importe primeiro um plano antes de utilizar este menu.\n");
            return;
        }
        System.out.printf("\n== Bem-vindo ao menu de simulação de uma rega! ==" +
                "\nA partir deste menu pode escolher o tipo de simulação que deseja correr.\n");
        System.out.printf("Estas são as opções disponíveis de momento:\n");
        System.out.printf("1 - Simulação com data e hora fornecida.\n");
        System.out.printf("2 - Simulação com data e hora atual.\n");
        System.out.printf("3 - Exportar o ficheiro do plano de rega.\n");
        System.out.printf("0 - Voltar ao menu anterior.\n");
        System.out.printf("A sua escolha: ");
        while (true) {
            try {
                choice = Integer.parseInt(read.nextLine());
            } catch (Exception e) {
                System.out.println("Escolha invalida, por favor tente novamente:");
                continue;
            }
            if (choice == 2 || choice == 1 || choice == 0 || choice == 3) {
                break;
            }
            System.out.println("Escolha invalida, por favor tente novamente:");
        }
        if (choice == 1)
            runSimulation();
        else if (choice == 2)
            System.out.printf("Resultado: %s\n", ctrl.runSimulationWithActualTime());
        else if (choice == 3) {
            ctrl.createPlanFile();
        }

    }

}


