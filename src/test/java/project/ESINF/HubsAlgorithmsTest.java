package project.ESINF;

import org.junit.jupiter.api.Test;
import project.application.controller.BasketManagerController;

import java.io.FileNotFoundException;

import static org.junit.jupiter.api.Assertions.*;

class HubsAlgorithmsTest {

    private HubsAlgorithms hubsAlgorithms = new HubsAlgorithms();
    private BasketManagerController basketManagerController = new BasketManagerController();

    private void importDataOnce(){
        if (!ImportData.isInstanciated()) {
            try {
                ImportData.importHorariosSmall();
            } catch (FileNotFoundException e) {
                throw new RuntimeException(e);
            }

        }
    }

    @Test
    void checkMaximumHubs(){
        importDataOnce();
        HubsPath hubsPath = hubsAlgorithms.maximumHubsPath(900000, basketManagerController.getLocalidadeWithID("CT43"),15,30,100,"10:00");

        System.out.println("\nPonto de Partida: " + "CT43");//Ponto de Partida
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
    }

    @Test
    void checkMaximumHubsDuration(){
        importDataOnce();
        HubsPath hubsPath = hubsAlgorithms.maximumHubsPath(900000, basketManagerController.getLocalidadeWithID("CT43"),15,30,100,"10:00");
        assertEquals(221.6526,hubsPath.getPathInformation().getDuration());     //Calculado manualmente
    }

    @Test
    void checkMaximumHubsDistance(){
        importDataOnce();
        HubsPath hubsPath = hubsAlgorithms.maximumHubsPath(900000, basketManagerController.getLocalidadeWithID("CT43"),15,30,100,"10:00");
        assertEquals(399648.0,hubsPath.getPathInformation().getPathDistance());     //Calculado manualmente
    }

    @Test
    void checkMaximumHubsRechargeStops(){
        importDataOnce();
        HubsPath hubsPath = hubsAlgorithms.maximumHubsPath(900000, basketManagerController.getLocalidadeWithID("CT43"),15,30,100,"10:00");
        assertEquals(4,hubsPath.getPathInformation().getRechargeStops().size());     //Calculado manualmente
    }

}