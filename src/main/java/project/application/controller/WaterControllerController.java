package project.application.controller;

import project.domain.ExportWaterPlanFile;
import project.domain.WaterInstructions;

public class WaterControllerController {

	private WaterInstructions wp = null;

	/**
	 * Vai buscar o plano de rega.
	 */
	public WaterControllerController() {
		wp = WaterInstructions.getInstance();
	}

	/**
	 * Confirma se existe um plano de rega já importado.
	 * @return boolean
	 */
	public boolean checkAlreadyImportedPlan() {
		return !wp.getDate().equals("1/1/2000");
	}

	/**
	 * Corre a simulação através da data e da hora fornecida.
	 * @param date String
	 * @param hour String
	 * @return String
	 */
	public String runSimulationWithGivenTime(String date, String hour) {
		String ret = "";
		try {
			ret = wp.simulateWithGivenDateTime(date, hour);
		} catch (Exception e) {
			throw e;
		}
		return ret;
	}

	/**
	 * Corre a simulação através da data e da hora atual.
	 * @return String
	 */
	public String runSimulationWithActualTime() {
		String ret = "";
		try {
			ret = wp.simulateWithActualDateTime();
		} catch (Exception e) {
			System.out.printf("Unexpected error: Water plan simulation with current date time.\n");
		}
		return ret;
	}

	/**
	 * Cria um ficheiro com o plano de um dia fornecido.
	 */
	public void createPlanFile() {
		ExportWaterPlanFile.createExportWaterPlanFile();
	}
}
