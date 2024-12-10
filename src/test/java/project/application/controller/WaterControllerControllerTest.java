package project.application.controller;

import org.junit.jupiter.api.Test;

import project.domain.ExportWaterPlanFile;
import project.domain.WaterInstructions;
import project.domain.WaterSector;

import static org.junit.jupiter.api.Assertions.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import java.util.TreeSet;
import java.util.regex.Pattern;

public class WaterControllerControllerTest {
	
	WaterControllerController ctrl = new WaterControllerController();
	
	WaterSector w1, w2, w3, w4, w5;
	WaterInstructions wp;
	String date = "30/10/2023";
    int[] daysByMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

	{
		w1 = new WaterSector("A", 30, 'T');
		w2 = new WaterSector("B", 50, 'T');
		w3 = new WaterSector("C", 15, 'P');
		w4 = new WaterSector("D", 10, 'I');
		w5 = new WaterSector("E", 20, '3');
		TreeSet<WaterSector> s = new TreeSet<>();
		s.add(w1);
		s.add(w2);
		s.add(w3);
		s.add(w4);
		s.add(w5);
		wp = WaterInstructions.getInstance();
		String	hours[] = {"9:00", "13:00", "17:00", "23:30"};
		wp.setAll(s, "25/10/2023", hours);
	}

	public void clearDirectory() {
		ExportWaterPlanFile.resetWaterPlans();
		File dir = new File ("exportedFiles");
		for(File file: dir.listFiles())
			if (!file.isDirectory())
				file.delete();
	}

	@Test
	void testCheckAlreadyImportedPlan() {
		assertTrue(ctrl.checkAlreadyImportedPlan());
	}

	@Test
	void testSimulationThrowsDateTimeExceptionWithInvalidFormat() {
		assertThrows(DateTimeException.class, () -> {
			ctrl.runSimulationWithGivenTime("asdasd", "9:00");
		});
		assertThrows(DateTimeException.class, () -> {
			ctrl.runSimulationWithGivenTime("asd/das/dasdd", "9:00");
		});
		assertThrows(DateTimeException.class, () -> {
			ctrl.runSimulationWithGivenTime("4/12/2023", "asddwaw");
		});
	}

	@Test
	void testSimulationThrowsDateTimeExceptionWithValidFormat() {
		assertThrows(DateTimeException.class, () -> {
			ctrl.runSimulationWithGivenTime("52/12/2023", "9:00");
		});
		assertThrows(DateTimeException.class, () -> {
			ctrl.runSimulationWithGivenTime("23/13/2023", "9:00");
		});
		assertThrows(DateTimeException.class, () -> {
			ctrl.runSimulationWithGivenTime("23/12/2023", "25:606");
		});
	}

	@Test
	void testSimulationOutOfRangeDays() {
		assertEquals("Data ultrapassa o limite deste plano.", ctrl.runSimulationWithGivenTime("23/10/2023", "9:00"));
		assertEquals("Data ultrapassa o limite deste plano.", ctrl.runSimulationWithGivenTime("23/1/2023", "9:00"));
	}

	@Test
	void testSimulationOutOfRangeHours() {
		assertEquals("Para a data e hora fornecidos nenhum setor estaria a ser regado." + 
		"\nO dia coencide com o primeiro dia do plano, "+
		"sendo que as horas dadas são antes da primeira rega.", ctrl.runSimulationWithGivenTime("25/10/2023", "1:00"));
	}

	@Test
	void testNoSectorIsBeingWatered() {
		assertEquals("Nenhum setor esta a ser regada de momento.", ctrl.runSimulationWithGivenTime(date, "20:00"));
		assertEquals("Nenhum setor esta a ser regada de momento.", ctrl.runSimulationWithGivenTime(date, "5:00"));
	}

	@Test 
	void testSectorBeingWateredSimple() {
		assertTrue(Pattern.matches("^O setor [A-Z]{1,} esta a ser regado, faltam [0-9]{1,2} minutos.", ctrl.runSimulationWithGivenTime(date, "10:00")));
		assertTrue(Pattern.matches("^O setor [A-Z]{1,} esta a ser regado, faltam [0-9]{1,2} minutos.", ctrl.runSimulationWithGivenTime(date, "14:00")));
	}

	@Test
	void testSectorBeingWateredMinuteCheckSimple() {
		assertEquals("O setor A esta a ser regado, faltam 10 minutos.", ctrl.runSimulationWithGivenTime(date, "9:20"));
		assertEquals("O setor B esta a ser regado, faltam 20 minutos.", ctrl.runSimulationWithGivenTime(date, "14:00"));
	}

	@Test
	void testSectorBeingWateredMinuteCheckOddEven() {
		assertEquals("O setor C esta a ser regado, faltam 5 minutos.", ctrl.runSimulationWithGivenTime(date, "10:30"));
		assertEquals("O setor D esta a ser regado, faltam 5 minutos.", ctrl.runSimulationWithGivenTime("27/10/2023", "14:25"));
	}

	@Test
	void testSectorBeingWateredMinuteCheck3() {
		assertEquals("O setor E esta a ser regado, faltam 5 minutos.", ctrl.runSimulationWithGivenTime("28/10/2023", "18:50"));
	}

	@Test
	void testSectorBeingWateredAfterMidnight() {
		assertEquals("O setor B esta a ser regado, faltam 20 minutos.", ctrl.runSimulationWithGivenTime(date, "00:30"));
	}

	@Test
	void testSectorBeingWateredAfterMidnightConsideredPreviousDay() {
		// Testa se vai considerar o dia anterior para verificar par ou impar
		// Date = 30/12/2023, vai considerar 29/12/2023, logo impar, de maneira que D deve regar
		assertEquals("O setor D esta a ser regado, faltam 5 minutos.", ctrl.runSimulationWithGivenTime(date, "00:55"));
	}

	@Test
	void testDifferentMonthDayCount() {
		assertEquals("O setor E esta a ser regado, faltam 5 minutos.", ctrl.runSimulationWithGivenTime("3/11/2023", "18:45"));
	}

	@Test
	void testSimulateActualDayTime() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");  
        LocalDateTime now = LocalDateTime.now();
        String dateTime = dtf.format(now);
		String dateActual = dateTime.split(" ")[0];
		String hoursActual = dateTime.split(" ")[1];
		int day = Integer.parseInt(dateActual.split("/")[0]) - 3, 
			month = Integer.parseInt(dateActual.split("/")[1]), 
			year = Integer.parseInt(dateActual.split("/")[2]), 
			hour = Integer.parseInt(hoursActual.split(":")[0]) - 1,
			minutes = Integer.parseInt(hoursActual.split(":")[1]);
		if (day < 1) {
			month--;
			if (month == 2 && (year % 400 == 0 || (year % 4 == 0 &&
                	year % 100 != 0)))
				day += daysByMonth[month - 1] + 1;
			else
				day += daysByMonth[month - 1];
		}
		if (hour < 0)
			hour = 23;
		String dateSimul = String.format("%d/%d/%d", day, month, year);
		String hoursSimul = String.format("%d:%d", hour, minutes);
		WaterSector w1, w2, w3, w4, w5;
		WaterInstructions wp;
		w1 = new WaterSector("A", 30, 'T');
		w2 = new WaterSector("B", 50, 'T');
		w3 = new WaterSector("C", 15, 'P');
		w4 = new WaterSector("D", 10, 'I');
		w5 = new WaterSector("E", 20, '3');
		TreeSet<WaterSector> s = new TreeSet<>();
		s.add(w1);
		s.add(w2);
		s.add(w3);
		s.add(w4);
		s.add(w5);
		wp = WaterInstructions.getInstance();
		String	hours[] = {hoursSimul};
		wp.setAll(s, dateSimul, hours);
		assertEquals("O setor B esta a ser regado, faltam 20 minutos.", ctrl.runSimulationWithActualTime());
	}
//
//	/**
//	 * Testa se o método cria um ficheiro.
//	 */
//	@Test
//	void checkFileCreation() {
//		clearDirectory();
//		ctrl.createPlanFile("2/1/2000");
//		File expectedFile = new File("exportedFiles/exportedPlan1.csv");
//		assertTrue(expectedFile.exists());
//	}
//
//	/**
//	 * Testa se o método cria vários ficheiros.
//	 */
//	@Test
//	void checkMultipleFileCreation() {
//		clearDirectory();
//		ctrl.createPlanFile("2/1/2000");
//		File expectedFile1 = new File("exportedFiles/exportedPlan1.csv");
//		assertTrue(expectedFile1.exists());
//		ctrl.createPlanFile("3/1/2000");
//		File expectedFile2 = new File("exportedFiles/exportedPlan2.csv");
//		assertTrue(expectedFile2.exists());
//		ctrl.createPlanFile("4/1/2000");
//		File expectedFile3 = new File("exportedFiles/exportedPlan3.csv");
//		assertTrue(expectedFile3.exists());
//	}
//
//	/**
//	 * Cria um ficheir e confirma se o conteúdo é o esperado.
//	 */
//	@Test
//	void checkFileContent() throws FileNotFoundException {
//		clearDirectory();
//		ctrl.createPlanFile("2/1/2000");
//		File expectedFile = new File("exportedFiles/exportedPlan1.csv");
//		Scanner fileInput = new Scanner(expectedFile);
//		String expectedLine = "Dia,Setor,Duração,Início,Final";
//		String actualLine = fileInput.next();
//
//		assertEquals(expectedLine,actualLine);
//	}
}
