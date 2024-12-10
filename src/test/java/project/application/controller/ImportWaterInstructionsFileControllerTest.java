package project.application.controller;

import project.domain.WaterInstructions;
import project.domain.WaterSector;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;
class ImportWaterInstructionsFileControllerTest {

    private final String generalFilePath = "WaterPlan_template.txt";
    private final ImportWaterPlanFileController ctrl = new ImportWaterPlanFileController();

    /**
     * Testa se o controller consegue aceder ao método de importação correto e se está a importar algum ficheiro
     */
    @org.junit.jupiter.api.Test
    void checkImportsSomething() throws Exception {
        ctrl.importPlanFile(generalFilePath);
        String defaultDate = "1/1/2000";

        assertNotEquals(defaultDate, WaterInstructions.getInstance().getDate());
    }

    /**
     * Testa se o controller consegue aceder ao método de importação correto e se está a importar as horas do ficheiro corretamente
     */
    @org.junit.jupiter.api.Test
    void checkImportsFileCorrectNumHours() throws Exception {
        ctrl.importPlanFile(generalFilePath);

        // Confirma o número das horas
        int expectedNumHours = 2;
        assertEquals(expectedNumHours, WaterInstructions.getInstance().getHours().length);
    }

    /**
     * Testa se o controller consegue aceder ao método de importação correto e se está a importar as horas do ficheiro corretamente
     */
    @org.junit.jupiter.api.Test
    void checkImportsFileCorrectHours() throws Exception {
        ctrl.importPlanFile(generalFilePath);

        // Confirma as horas
        String expectedHours = "[8:30, 17:00]";
        String actualHours = Arrays.toString(WaterInstructions.getInstance().getHours());
        assertEquals(expectedHours,actualHours);
    }

    /**
     * Testa se o controller consegue aceder ao método de importação correto e se está a importar os sectores do ficheiro corretamente
     */
    @org.junit.jupiter.api.Test
    void checkImportsFileCorrectNumSectors() throws Exception {
        ctrl.importPlanFile(generalFilePath);

        // Confirma o número de sectores
        int expectedNumHours = 6;
        assertEquals(expectedNumHours, WaterInstructions.getInstance().getSectors().size());
    }

    /**
     * Testa se o controller consegue aceder ao método de importação correto e se está a importar os sectores do ficheiro corretamente
     */
    @org.junit.jupiter.api.Test
    void checkImportsFileCorrectFirstSector() throws Exception {
        ctrl.importPlanFile(generalFilePath);

        // Confirma o primeiro setor
        WaterSector expectedFirstSector = new WaterSector("A",14, 'T');
        WaterSector actualFirstSector = new WaterSector(WaterInstructions.getInstance().getSectors().first());
        assertEquals(expectedFirstSector.getSector(),actualFirstSector.getSector());
        assertEquals(expectedFirstSector.getDuration(),actualFirstSector.getDuration());
        assertEquals(expectedFirstSector.getRegularity(),actualFirstSector.getRegularity());
    }

    /**
     * Testa se o controller consegue aceder ao método de importação correto e se está a importar os sectores do ficheiro corretamente
     */
    @org.junit.jupiter.api.Test
    void checkImportsFileCorrectLastSector() throws Exception {
        ctrl.importPlanFile(generalFilePath);

        // Confirma o ultimo setor
        WaterSector expectedLastSector = new WaterSector("F",10, '3');
        WaterSector actualLastSector = new WaterSector(WaterInstructions.getInstance().getSectors().last());
        assertEquals(expectedLastSector.getSector(),actualLastSector.getSector());
        assertEquals(expectedLastSector.getDuration(),actualLastSector.getDuration());
        assertEquals(expectedLastSector.getRegularity(),actualLastSector.getRegularity());
    }

}