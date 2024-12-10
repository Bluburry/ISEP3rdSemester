package project.application.controller;

import org.junit.jupiter.api.Test;
import project.ESINF.ImportData;
import project.ESINF.Localidade;
import project.ESINF.Path;

import java.io.FileNotFoundException;

import static org.junit.jupiter.api.Assertions.*;

class BasketManagerControllerTest {

    private BasketManagerController ctrl = new BasketManagerController();

    private void importDataOnce(){
        if (!ImportData.isInstanciated()) {
            try {
                ImportData.importDataForTest();
            } catch (FileNotFoundException e) {
                throw new RuntimeException(e);
            }

        }
    }

    /**
     * Check an example where the autonomy is possible
     */
    @Test
    void checkAutonomyPossible() {
        importDataOnce();
        Double autonomia = 290000.0;

        String expected = "CT15 -> CT12 -> CT1 -> CT10 -> CT13 -> CT14 -> CT8\n" +
                "Distância: 605261.0\n" +
                "Paragens: CT10, CT14\n" +
                "Número de Paragens: 2";

        assertEquals(expected,ctrl.getLongestDrivePath(autonomia).toString());
    }

    /**
     * Check an example where the autonomy is impossible.
     */
    @Test
    void checkAutonomyImpossible() {
        importDataOnce();
        Double autonomia = 100.0;

        String expected = "CT15 -> CT12 -> CT1 -> CT10 -> CT13 -> CT14 -> CT8\n" +
                "Distância: 605261.0\n" +
                "Paragens: É impossivel realizar esta viagem, visto que a autonomia não alcança a distância entre dois pontos de paragem, para cumprir a viagem com menor percurso possível:\n" +
                "CT15 -> CT12 = 70717.0m\n" +
                "Autonomia: 100.0m";

        assertEquals(expected,ctrl.getLongestDrivePath(autonomia).toString());
    }
}