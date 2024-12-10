package project.domain;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class ExportWaterPlanFile {
    /**
     * Vai buscar o Plano de Rega instanciado no ficheiro.
     */
    private static WaterPlan wp = WaterPlan.getInstance();

    /**
     * Conta o número de ficheiro criados.
     */
    static int waterPlans = 0;

    private static String folder = "exportedFiles/";

    public static void resetWaterPlans() {
        waterPlans = 0;
    }

    /**
     * Cria o ficheiro com a data fornecida.
     */
    public static void createExportWaterPlanFile() {
        waterPlans++;

        String filePath = "exportedPlan" + waterPlans + ".csv";

        try {
            FileWriter fileWriter = new FileWriter(folder + filePath);

            PrintWriter printWriter = new PrintWriter(fileWriter);

            System.out.println("\nO ficheiro foi criado com o seguinte conteúdo:\n");
            createWholePlanFile(printWriter);

            printWriter.close();
        } catch (IOException e) {
            System.out.println("[Erro] Caminho de ficheiro não encontrado.");
        }
    }

    /**
     * Cria o conteúdo do ficheiro.
     * @param file PrintWriter
     */
    public static void createWholePlanFile(PrintWriter file) {
        file.println("Dia,Setor,Início,Final,FatorProduçao");
        System.out.println("Dia,Setor,Início,Final,FatorProduçao");   // Comando opcional (feito para mostrar no terminal o que foi feito no ficheiro)
        StringBuilder string = new StringBuilder();
		String[] aux, hours;

        for (WaterSectorRecord record : wp.getWaterRecords()){
            aux = record.getDateHours().split(", ");
            string.append(aux[0] + ",");
            string.append(record.getSector()+",");
            hours = aux[1].split(" - ");
            string.append(hours[0]+","+hours[1]);

			if (record.getMix() != null)
				string.append(","+record.getMix());

            file.println(string);
            System.out.println(string);  // Comando opcional (feito para mostrar no terminal o que foi feito no ficheiro)
            string.delete(0, string.length());
        }
    }

}
