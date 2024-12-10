package project.domain;

import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

class ExportWaterInstructionsFileTest {

    private final ExportWaterPlanFile exportFile = new ExportWaterPlanFile();

    public void clearDirectory() {
        exportFile.resetWaterPlans();
        File dir = new File ("exportedFiles");
        for(File file: dir.listFiles())
            if (!file.isDirectory())
                file.delete();

    }
    /**
     * Testa se o método cria um ficheiro.
     */
    @Test
    void checkFileCreation() {
        clearDirectory();
        exportFile.createExportWaterPlanFile();
        File expectedFile = new File("exportedFiles/exportedPlan1.csv");
        assertTrue(expectedFile.exists());
    }

    /**
     * Testa se o método cria vários ficheiros.
     */
    @Test
    void checkMultipleFileCreation() {
        clearDirectory();
        exportFile.createExportWaterPlanFile();
        File expectedFile1 = new File("exportedFiles/exportedPlan1.csv");
        assertTrue(expectedFile1.exists());
        exportFile.createExportWaterPlanFile();
        File expectedFile2 = new File("exportedFiles/exportedPlan2.csv");
        assertTrue(expectedFile2.exists());
        exportFile.createExportWaterPlanFile();
        File expectedFile3 = new File("exportedFiles/exportedPlan3.csv");
        assertTrue(expectedFile3.exists());
    }

    /**
     * Cria um ficheir e confirma se o conteúdo é o esperado.
     */
    @Test
    void checkFileContent() throws FileNotFoundException {
        clearDirectory();
        exportFile.createExportWaterPlanFile();
        File expectedFile = new File("exportedFiles/exportedPlan1.csv");
        Scanner fileInput = new Scanner(expectedFile);
        String expectedLine = "Dia,Setor,Duração,Início,Final";
        String actualLine = fileInput.next();

        assertEquals(expectedLine,actualLine);
    }
}