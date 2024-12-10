package project.domain;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import java.util.TreeSet;
import java.util.regex.Pattern;

public class ImportWaterPlanFile {

    /**
     * Consome o plano de rega através do ficheiro fornecido.
     * @param filePath String
     * @throws Exception
     */
    public static void importPlanFile(String filePath) throws Exception {
        Scanner fileInput;
		String[] waterStartTimes;
        TreeSet<WaterSector> sectors = new TreeSet<>();
        String helper;
        WaterSector sector;
		File fl = new File(filePath);

		checkValidFile(fl);

		fileInput = new Scanner(fl);
		helper = fileInput.nextLine();
        waterStartTimes = helper.split(", ");

        while (fileInput.hasNextLine()) {
            helper = fileInput.nextLine();
            if (!(helper.equalsIgnoreCase(" "))) {
                sector = createNewSector(helper.trim());
                sectors.add(new WaterSector(sector));
            }
        }

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDateTime now = LocalDateTime.now();
        String date = dtf.format(now);

        WaterInstructions waterInstructions = WaterInstructions.getInstance();
        waterInstructions.setAll(sectors, date, waterStartTimes);
        waterInstructions.createWaterPlan();
		fileInput.close();
    }

	private static void checkValidFile(File file) throws Exception {
        Scanner fileInput = new Scanner(file);
        String helper = fileInput.nextLine();
		String[] waterStartTimes;
		int wateringMins[] = {0, 0, 0, 0};
		String[] arrayhelper;

        if (!Pattern.matches("^[0-9]{1,2}:[0-9]{1,2}(, [0-9]{1,2}:[0-9]{1,2})*$", helper.trim())) {
			fileInput.close();
            throw new Exception("Ficheiro não está devidamente formatado - horas não aceites.");
		}
        waterStartTimes = helper.split(", ");

        while (fileInput.hasNextLine()) {
            helper = fileInput.nextLine();
            if (!(helper.equalsIgnoreCase(" "))) {
                // if (!Pattern.matches("^[A-Z]+,[0-9]{1,2},[TPI3]{1}$", helper.trim()))
					// regex antigo que nao considera fertirrega
				if (!Pattern.matches("^[A-Z]+,[0-9]{1,2},[TPI3]{1}($|,[A-Za-z0-9_]*(,[0-9]{1,2})?$)", helper.trim())) {
					fileInput.close();
					throw new Exception("Ficheiro não está devidamente formatado - parcela não aceite.");
				}

	        	arrayhelper = helper.split(",");

				if (arrayhelper.length == 5 && !arrayhelper[3].matches(".*\\d.*")) {
					fileInput.close();
					throw new Exception("Ficheiro não está devidamente formatado - mix fertirrega não aceite.");
				}

				switch(arrayhelper[2].charAt(0)) {
					case 'P':
						wateringMins[1] += Integer.parseInt(arrayhelper[1]);
						break;
					case 'I':
						wateringMins[2] += Integer.parseInt(arrayhelper[1]);
						break;
					case '3':
						wateringMins[3] += Integer.parseInt(arrayhelper[1]);
						break;
					default:
						wateringMins[0] += Integer.parseInt(arrayhelper[1]);
						break;
				}
            }
        }

		if (waterStartTimes.length > 1) {
			int hrStart, minStart, hrEnd, minEnd, waterMin;
			waterMin = wateringMins[0];
			if (wateringMins[1] > wateringMins[2] && wateringMins[1] > wateringMins[3])
				waterMin += wateringMins[1];
			else if (wateringMins[2] > wateringMins[1] && wateringMins[2] > wateringMins[3])
				waterMin += wateringMins[2];
			else
				waterMin += wateringMins[3];

			String[] hl;
			for (int i = 1; i < waterStartTimes.length; i++) {
				hl = waterStartTimes[i - 1].split(":");
				hrStart = Integer.parseInt(hl[0]);
				minStart = Integer.parseInt(hl[1]);

				hl = waterStartTimes[i].split(":");
				hrEnd = Integer.parseInt(hl[0]);
				minEnd = Integer.parseInt(hl[1]);

				minStart += waterMin;
				while (minStart >= 60) {
					minStart -= 60;
					hrStart++;
				}

				if (hrStart > hrEnd || (hrStart == hrEnd && minStart >= minEnd)) {
					fileInput.close();
					throw new Exception("Ficheiro não está devidamente formatado - horas intersetam.");
				}
			}
		}
		fileInput.close();
	}

    /**
     * Cria um novo setor através da linha do ficheiro.
     * @param line String
     * @return WaterSector
     */
    public static WaterSector createNewSector(String line){
        String[] parameters = line.split(",");
        String pot = parameters[0];
        int duration = Integer.parseInt(parameters[1]);
        char regularity = parameters[2].charAt(0);
		if (parameters.length < 5) 
			return new WaterSector(pot,duration,regularity);
		String mix = parameters[3];
		int recurrence = Integer.parseInt(parameters[4]);
		return new WaterSector(pot,duration,regularity, mix, recurrence);
    }
}
