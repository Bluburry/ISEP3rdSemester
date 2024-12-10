package project.application.controller;

import project.domain.ImportWaterPlanFile;

import java.io.FileNotFoundException;

public class ImportWaterPlanFileController {

    /**
     * Importa um plano de rega através do caminho do ficheiro.
     * @param filePath String
     * @throws Exception FileNotFound
     */
    public void importPlanFile(String filePath) throws Exception {
        ImportWaterPlanFile.importPlanFile(filePath);
    }


}
