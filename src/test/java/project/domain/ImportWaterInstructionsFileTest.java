package project.domain;

import org.junit.jupiter.api.Test;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class ImportWaterInstructionsFileTest {

    private final String generalFilePath = "WaterPlan_template.txt";
    private final ImportWaterPlanFile importPlan = new ImportWaterPlanFile();

    /**
     * Testa se consegue importar corretamente e se está a importar algum ficheiro
     */
    @Test
    void checkImportsSomething() throws Exception {
        importPlan.importPlanFile(generalFilePath);
        String defaultDate = "1/1/2000";

        assertNotEquals(defaultDate, WaterInstructions.getInstance().getDate());
    }

    /**
     * Testa se consegue importar corretamente e se está a importar as horas do ficheiro corretamente
     */
    @Test
    void checkImportsFileCorrectNumHours() throws Exception {
        importPlan.importPlanFile(generalFilePath);

        // Confirma o número das horas
        int expectedNumHours = 2;
        assertEquals(expectedNumHours, WaterInstructions.getInstance().getHours().length);
    }

    /**
     * Testa se consegue importar corretamente e se está a importar as horas do ficheiro corretamente
     */
    @Test
    void checkImportsFileCorrectHours() throws Exception {
        importPlan.importPlanFile(generalFilePath);

        // Confirma as horas
        String expectedHours = "[8:30, 17:00]";
        String actualHours = Arrays.toString(WaterInstructions.getInstance().getHours());
        assertEquals(expectedHours,actualHours);
    }

    /**
     * Testa se consegue importar corretamente e se está a importar os sectores do ficheiro corretamente
     */
    @Test
    void checkImportsFileCorrectNumSectors() throws Exception {
        importPlan.importPlanFile(generalFilePath);

        // Confirma o número de sectores
        int expectedNumHours = 6;
        assertEquals(expectedNumHours, WaterInstructions.getInstance().getSectors().size());
    }

    /**
     * Testa se consegue importar corretamente e se está a importar os sectores do ficheiro corretamente
     */
    @Test
    void checkImportsFileCorrectFirstSector() throws Exception {
        importPlan.importPlanFile(generalFilePath);

        // Confirma o primeiro setor
        WaterSector expectedFirstSector = new WaterSector("A",14, 'T');
        WaterSector actualFirstSector = new WaterSector(WaterInstructions.getInstance().getSectors().first());
        assertEquals(expectedFirstSector.getSector(),actualFirstSector.getSector());
        assertEquals(expectedFirstSector.getDuration(),actualFirstSector.getDuration());
        assertEquals(expectedFirstSector.getRegularity(),actualFirstSector.getRegularity());

        // Confirma o ultimo setor
        WaterSector expectedLastSector = new WaterSector("F",10, '3');
        WaterSector actualLastSector = new WaterSector(WaterInstructions.getInstance().getSectors().last());
        assertEquals(expectedLastSector.getSector(),actualLastSector.getSector());
        assertEquals(expectedLastSector.getDuration(),actualLastSector.getDuration());
        assertEquals(expectedLastSector.getRegularity(),actualLastSector.getRegularity());
    }

    /**
     * Testa se consegue importar corretamente e se está a importar os sectores do ficheiro corretamente
     */
    @Test
    void checkImportsFileCorrectLastSector() throws Exception {
        importPlan.importPlanFile(generalFilePath);

        // Confirma o ultimo setor
        WaterSector expectedLastSector = new WaterSector("F",10, '3');
        WaterSector actualLastSector = new WaterSector(WaterInstructions.getInstance().getSectors().last());
        assertEquals(expectedLastSector.getSector(),actualLastSector.getSector());
        assertEquals(expectedLastSector.getDuration(),actualLastSector.getDuration());
        assertEquals(expectedLastSector.getRegularity(),actualLastSector.getRegularity());
    }

    /**
     * Testa se o objeto Setor de Rega é criado corretamente.
     */
    @Test
    void checkSectorCreator() {
        String objectInformation = "R,1,P";
        WaterSector expectedSector = new WaterSector("R",1,'P');
        WaterSector actualSector = importPlan.createNewSector(objectInformation);

        assertEquals(expectedSector.getSector(),actualSector.getSector());
        assertEquals(expectedSector.getDuration(),actualSector.getDuration());
        assertEquals(expectedSector.getRegularity(),actualSector.getRegularity());
    }

}
