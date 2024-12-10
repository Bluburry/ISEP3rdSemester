package project.ui.console;

import project.ESINF.Algorithms;
import project.ESINF.HubsPath;
import project.ESINF.ImportData;
import project.ESINF.Localidade;
import project.application.controller.BasketManagerController;
import project.ui.console.utils.Utils;

import java.io.FileNotFoundException;
import java.text.DecimalFormat;
import java.util.LinkedList;
import java.util.Scanner;

public class BasketManagerUI implements Runnable {
    DecimalFormat decimalFormat = new DecimalFormat("#.##");

    private final BasketManagerController ctrl = new BasketManagerController();
    private final Scanner read = new Scanner(System.in);

    @Override
    public void run() {
        int choice;

        if (!ctrl.checkImport()) {
            try {
                ctrl.importBasketData();
            } catch (FileNotFoundException e) {
                throw new RuntimeException(e);
            }

        }

        System.out.printf("\n== [ESINF] Bem-vindo á gestão de cabazes! ==" +
                "\nA partir deste menu pode escolher o tipo de operação que deseja correr.\n");
        System.out.printf("Estas são as opções disponíveis de momento:\n");
        System.out.printf("1 - [USEI01] Display importação.\n");
        System.out.printf("2 - [USEI02] Ordenar localidades por diferentes critérios.\n");
        System.out.printf("3 - [USEI03] Percurso mínimo possível entre os dois locais mais afastados da rede de distribuição.\n");
        System.out.printf("4 - [USEI04] Rede, de mínima distância total, que liga todas as localidades\n");
        System.out.printf("6 - [USEI06] Percursos entre um local e um hub utilizando só a autonomia\n");
        System.out.printf("7 - [USEI07] Melhor percurso entre todos os hubs a partir de um ponto de partida.\n");
        System.out.printf("8 - [USEI08] Menor circuito que passe pelos maiores N Hubs.\n");
        System.out.printf("9 - [USEI09] Organizar o grafo em clusters\n");

        System.out.printf("0 - Voltar ao menu anterior.\n");
        System.out.printf("A sua escolha: ");
        while (true) {
            try {
                choice = Integer.parseInt(read.nextLine());
            } catch (Exception e) {
                System.out.println("Escolha invalida, por favor tente novamente:");
                continue;
            }
            if (choice == 2 || choice == 1 || choice == 0 || choice == 3 || choice == 4 || choice == 6 || choice == 7 || choice == 8 || choice == 9) {
                break;
            }
            System.out.println("Escolha invalida, por favor tente novamente:");
        }
        switch (choice) {
            case 0:
                break;
            case 1:
                System.out.println("\n Grafo:\n");
                if (ImportData.isInstanciated() == false) {
                    try {
                        ImportData.importData();
                    } catch (FileNotFoundException e) {
                        throw new RuntimeException(e);
                    }
                }
                System.out.println(ImportData.getGraph().toString());
                break;
            case 2:
                ctrl.orderLocals(ImportData.getGraph());
                break;
            case 3:
                System.out.println(ctrl.getLongestDrivePath(askAutonomia()).toString());
                break;
            case 4:
                ctrl.getMinimumPath(ImportData.getGraph());
                break;
            case 6:
                Localidade local = askLocalidade();
                int k = 0;
                System.out.println("Indique o hub a ser escolhido");
                for (Localidade hub : ImportData.getGraph().vertices()) {
                    if(hub.getIsHub()){
                        System.out.println(++k + " | " + hub.getIdLocalidade());
                    }
                }
                int hub = read.nextInt();
                System.out.println("Indique a autonomia do veiculo (Km): ");
                double autonomia2 = read.nextDouble();
                ctrl.getPathsOnlyAutonomy(ImportData.getGraph(), local, ImportData.getGraph().vertices().get(hub), autonomia2, askVelocidadeMedia());
                break;
            case 7:
                Localidade pontoPartida = askLocalidade();

                HubsPath hubsPath = ctrl.maximumHubsPath(askAutonomia(), pontoPartida,askTempoDescarga(), askTempoCarga(), askVelocidadeMedia(), askHoraInicial());
                System.out.println("\nPonto de Partida: " + pontoPartida);//Ponto de Partida
                System.out.println("== Caminho Total: ==");//Caminho Total

                for (int i = 0; i < hubsPath.getHoursInformation().size(); i++) {        //Hora de chegada a todos os locais e hora de partida nos hubs
                    if (i+1 != hubsPath.getHoursInformation().size()){
                        System.out.println(hubsPath.getHoursInformation().get(i));
                    } else {
                        System.out.println("== | ==");
                        System.out.println(hubsPath.getHoursInformation().get(i));
                    }
                }

                System.out.println("Distância Percorrida: " + hubsPath.getPathInformation().getPathDistance());//Distância total do percurso
                System.out.println("Número de Carregamentos: " + hubsPath.getPathInformation().getRechargeStops().size());//Número de carregamentos
                System.out.println("Duração total: " + hubsPath.getPathInformation().getDuration());//Tempo total
                break;
            case 8:
                LinkedList<Localidade> circuito = null;
                System.out.print("Ponto de Partida (CTXXX): ");
                String startLoc = read.nextLine();
                System.out.println("Velocidade Carro (KM/H): ");
                int speed = read.nextInt();
                System.out.println("Número de Hubs: ");
                int nHubs = read.nextInt();
                System.out.println("Autonomia: ");
                int autonomy = read.nextInt();
                System.out.println("Tempo de Carregamento: ");
                Double carregamento = read.nextDouble();
                System.out.println("Tempo de Carga: ");
                Double carga = read.nextDouble();

                try {
                    circuito = Algorithms.travellingSalesman(nHubs, startLoc, autonomy);
                } catch (FileNotFoundException e) {
                    throw new RuntimeException(e);
                }

                for(Localidade l : circuito){
                    System.out.print(l + " ->");
                }

                System.out.println("\n\n");

                System.out.println("Length : " + decimalFormat.format(Algorithms.pathLength(circuito, ImportData.getGraph())));
                System.out.println("Duration : " + decimalFormat.format(Algorithms.pathLength(circuito, ImportData.getGraph())/(speed *1000)*60) +"mins");
                System.out.println("Carregamentos : " + Utils.numeroCarregamentos(circuito,autonomy)+ ", " + Utils.numeroCarregamentos(circuito,autonomy) * carregamento + "min");
                System.out.println("Número de descargas :" + nHubs + ", " + nHubs* carregamento + "min");
            case 9:
                ctrl.gervanNewman(ImportData.getGraph());
                break;
        }
    }

    private double askAutonomia() {
        double answer;
        do {
            System.out.printf("\nIndique a autonomia do veículo: ");
            answer = read.nextDouble();
            // O algoritmo funciona na mesma com valores negativos ou nulos, contudo a resposta vai ser sempre a mesma (impossivel de se mexer)
            if (answer < 0) {
                System.out.printf("\n[ERROR] A autonomia não pode ser negativa. Tenta outra vez.");
            } else if (answer == 0) {
                System.out.printf("\n[ERROR] A autonomia não pode ser igual a zero. Tenta outra vez.");
            }
        } while (answer <= 0);
        return answer*1000;         //Km
    }

    private Localidade askLocalidade() {
        Localidade localidade = new Localidade();
        String answer;
        boolean valid = false;
        do {
            System.out.printf("\nO ID da Localidade: ");
            answer = read.next();
            if (ctrl.checkLocalidadeExists(answer)) {
                localidade = ctrl.getLocalidadeWithID(answer);
                if (localidade.getIsHub()) {
                    System.out.println("\n[ERROR] A Localidade existe mas é um Hub, não é possível começar num hub. Tenta novamente.");
                } else {
                    valid = true;
                }
            } else {
                System.out.println("\n[ERROR] A Localidade não existe. Tenta novamente.");
            }
        } while (!valid);
        return localidade;
    }



    private double askTempoDescarga() {
        double answer;
        do {
            System.out.printf("\nIndique o tempo de descarga (minutos): ");
            answer = read.nextDouble();

            if (answer < 0) {
                System.out.printf("\n[ERROR] O tempo não pode ser negativo. Tenta outra vez.");
            }
        } while (answer < 0);
        return answer;
    }

    private double askTempoCarga() {
        double answer;
        do {
            System.out.printf("\nIndique o tempo de carga (minutos): ");
            answer = read.nextDouble();

            if (answer < 0) {
                System.out.printf("\n[ERROR] O tempo não pode ser negativo. Tenta outra vez.");
            }
        } while (answer < 0);
        return answer;
    }

    private double askVelocidadeMedia() {
        double answer;
        do {
            System.out.printf("\nIndique a velocidade média do veículo: ");
            answer = read.nextDouble();
            if (answer < 0) {
                System.out.printf("\n[ERROR] A velocidade média não pode ser negativa. Tenta outra vez.");
            } else if (answer == 0) {
                System.out.printf("\n[ERROR] A velocidade média não pode ser igual a zero. Tenta outra vez.");
            }
        } while (answer <= 0);
        return answer;
    }

    private String askHoraInicial() {
        String answer;
        do {
            System.out.printf("\nIndique a hora em que começa a viagem (HH:mm): ");
            answer = read.next();
            if (!Utils.validateHours(answer)){
                System.out.printf("\n[ERROR] Tempo Incorreto. Tente novamente.");
            }
        } while (!Utils.validateHours(answer));
        return answer;
    }
}
