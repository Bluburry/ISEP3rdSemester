package project.domain;

import java.text.ParseException;
import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.TreeSet;

import project.ui.console.utils.Utils;

public class WaterInstructions {
    private TreeSet<WaterSector> sectors;
    private String date;
    private String[] hours;

    private final int[] daysByMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    private final String[] DEFAULT_HOURS = {"0:00"};
    private final String DEFAULT_DATE = "1/1/2000";

    /**
     * Cria um Plano de Rega através dos atributos fornecidos.
     *
     * @param sectors TreeSet
     * @param date    String
     * @param hours   String[]
     */
    public WaterInstructions(TreeSet<WaterSector> sectors, String date, String[] hours) {
        this.sectors = new TreeSet<>(sectors);
        this.date = date;
        this.hours = hours;
    }

    /**
     * Cria um Plano de Rega genérico.
     */
    public WaterInstructions() {
        this.sectors = new TreeSet<>();
        this.date = DEFAULT_DATE;
        this.hours = DEFAULT_HOURS;
    }

    // Gets and Sets

    /**
     * Retorna a Data
     *
     * @return String
     */
    public String getDate() {
        return date;
    }

    /**
     * Retorna as Horas
     *
     * @return String[]
     */
    public String[] getHours() {
        return hours;
    }

    /**
     * Retorna as Horas como int
     *
     * @return int[][]
     */
    public int[][] getHoursAsInteger() {
        int hoursSaved[][] = new int[this.hours.length][2];
        int i = 0;
        for (String s : hours) {
            hoursSaved[i][0] = Integer.parseInt(s.split(":")[0]);
            hoursSaved[i][1] = Integer.parseInt(s.split(":")[1]);
            i++;
        }
        return hoursSaved;
    }

    /**
     * Retorna a Lista de Setores
     *
     * @return TreeSet
     */
    public TreeSet<WaterSector> getSectors() {
        return sectors;
    }

    /**
     * Altera a Data
     *
     * @param date String
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * Altera as Horas
     *
     * @param hours String[]
     */
    public void setHours(String[] hours) {
        this.hours = hours;
    }

    /**
     * Altera a Lista de Setores
     *
     * @param sectors TreeSet
     */
    public void setSectors(TreeSet<WaterSector> sectors) {
        this.sectors = sectors;
    }

    /**
     * Altera todos os atributos do Plano de Rega
     *
     * @param sectors TreeSet
     * @param date    String
     * @param hours   String[]
     */
    public void setAll(TreeSet<WaterSector> sectors, String date, String[] hours) {
        this.sectors = new TreeSet<>(sectors);
        this.date = date;
        this.hours = hours;
    }
    // ===============

    private static WaterInstructions instance = null;

    /**
     * Retorna o Plano de Rega que existe, caso exista. Senão, cria um plano de rega genérico.
     *
     * @return WaterPlan
     */
    public static WaterInstructions getInstance() {
        if (instance == null) {
            synchronized (WaterInstructions.class) {
                instance = new WaterInstructions();
            }
        }
        return instance;
    }

    /**
     * Faz uma simulação com a data e a hora atual.
     *
     * @return String
     */
    public String simulateWithActualDateTime() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        LocalDateTime now = LocalDateTime.now();
        String dateTime = dtf.format(now);
        return simulateWithGivenDateTime(dateTime.split(" ")[0], dateTime.split(" ")[1]);
    }

    /**
     * Faz uma simulação com uma data e hora fornecida
     *
     * @param date String
     * @param hour String
     * @return String
     */
    public String simulateWithGivenDateTime(String date, String hour) {
        int dateInfo[] = new int[9];
        // Date info:
        // 0 - day, 1 - month, 2 - year, 3 - this.day, 4 - this.month,
        // 5 - this.year, 6 - hour, 7 - minutes, 8 - days difference

        // garante que os string teem o formato devido
        if (!Utils.validateDate(date) || !Utils.validateHours(hour))
            throw new DateTimeException("Data/hora fornecidos não estão formatados corretamente\nex.: data - 9/10/2024, hora: 5:25");

        try {
            dateInfo[0] = Integer.parseInt(date.split("/")[0]);
            dateInfo[1] = Integer.parseInt(date.split("/")[1]);
            dateInfo[2] = Integer.parseInt(date.split("/")[2]);
            dateInfo[6] = Integer.parseInt(hour.split(":")[0]);
            dateInfo[7] = Integer.parseInt(hour.split(":")[1]);
        } catch (Exception e) {
            throw new DateTimeException("Data/hora fornecidos não estão formatados corretamente\nex.: data - 9/10/2024, hora: 5:25");
        }

        dateInfo[3] = Integer.parseInt(this.date.split("/")[0]);
        dateInfo[4] = Integer.parseInt(this.date.split("/")[1]);
        dateInfo[5] = Integer.parseInt(this.date.split("/")[2]);

        dateInfo[8] = checkDateDistance(dateInfo);

        if (dateInfo[8] < 0 || dateInfo[8] > 30)
            return "Data ultrapassa o limite deste plano.";

        int[][] hoursSaved = getHoursAsInteger();
        int[] hoursUse = getBestTimeToCompare(hoursSaved, dateInfo[6]);
        boolean hourFlag = false;
        if (dateInfo[8] == 0 && dateInfo[6] < hoursSaved[0][0])
            return "Para a data e hora fornecidos nenhum setor estaria a ser regado." +
                    "\nO dia coencide com o primeiro dia do plano, " +
                    "sendo que as horas dadas são antes da primeira rega.";
        else if (dateInfo[6] < hoursSaved[0][0]) {
            dateInfo[8]--;
            dateInfo[0]--;
            hourFlag = true;
        }

        for (WaterSector p : sectors) {
            if (checkWateringDay(p.getRegularity(), dateInfo[0], dateInfo[8])) {
                hoursUse[1] += p.getDuration();
                if (hoursUse[1] >= 60) {
                    hoursUse[1] -= 60;
                    hoursUse[0]++;
                }
                if (hoursUse[0] >= 24) {
                    hourFlag = false;
                    hoursUse[0] = 0;
                }
                if (!hourFlag && (hoursUse[0] > dateInfo[6] ||
                        (hoursUse[0] == dateInfo[6] && hoursUse[1] >= dateInfo[7]))) {
                    int minuteDiff = hoursUse[1] - dateInfo[7];
                    if (hoursUse[0] > dateInfo[6])
                        minuteDiff += 60;
                    return String.format("O setor %s esta a ser regado, faltam %d minutos.", p.getSector(), minuteDiff);
                }
            }
        }
        return "Nenhum setor esta a ser regada de momento.";
    }

    /**
     * Confirma se é dia de rega para um setor especifico.
     *
     * @param reg     char
     * @param dayEnd  int
     * @param dayDiff int
     * @return boolean
     */
    public boolean checkWateringDay(char reg, int dayEnd, int dayDiff) {
        return (reg == 'T' || (reg == '3' && dayDiff % 3 == 0) ||
                (reg == 'P' && dayEnd % 2 == 0) || (reg == 'I' && dayEnd % 2 != 0));
    }

    /**
     * Confirma o tempo que uma data está de outra
     *
     * @param dateInfo int[]
     * @return int
     */
    public int checkDateDistance(int[] dateInfo) {
        // 0 - day, 1 - month, 2 - year, 3 - this.day, 4 - this.month, 
        // 5 - this.year, 6 - hour, 7 - minutes, 8 - days difference
        if (dateInfo[5] != dateInfo[2] && dateInfo[4] != 12 && dateInfo[1] != 1)
            return -1;
        else if (dateInfo[4] != dateInfo[1]) {
            if ((dateInfo[2] % 400 == 0 || (dateInfo[2] % 4 == 0 &&
                    dateInfo[2] % 100 != 0)) && dateInfo[1] == 2 &&
                    (dateInfo[4] == 2 || dateInfo[4] == 3)) {
                if (dateInfo[4] != dateInfo[1])
                    return (29 - dateInfo[0] + dateInfo[3]);
                else
                    return (dateInfo[0] - dateInfo[3]);
            } else if (dateInfo[1] != dateInfo[4] + 1 || dateInfo[1] < dateInfo[4])
                return -1;
            else
                return daysByMonth[dateInfo[4] - 1] - dateInfo[3] + dateInfo[0];
        } else
            return (dateInfo[0] - dateInfo[3]);
    }

    public int[] createDateInfo(String date) {
        int dateInfo[] = new int[6];

        dateInfo[0] = Integer.parseInt(date.split("/")[0]);
        dateInfo[1] = Integer.parseInt(date.split("/")[1]);
        dateInfo[2] = Integer.parseInt(date.split("/")[2]);
        dateInfo[3] = Integer.parseInt(this.date.split("/")[0]);
        dateInfo[4] = Integer.parseInt(this.date.split("/")[1]);
        dateInfo[5] = Integer.parseInt(this.date.split("/")[2]);
        return dateInfo;
    }

    /**
     * Retorna as horas guardadas que mais se aproximam da que o utilizador pede
     *
     * @param hoursSaved int[][]
     * @param hour       int
     * @return int[]
     */
    private int[] getBestTimeToCompare(int hoursSaved[][], int hour) {
        int[] ret = new int[2];
        if (hour < hoursSaved[0][0]) {
            ret[0] = hoursSaved[hoursSaved.length - 1][0];
            ret[1] = hoursSaved[hoursSaved.length - 1][1];
            return ret;
        }
        for (int[] ints : hoursSaved) {
            if (hour >= ints[0]) {
                ret[0] = ints[0];
                ret[1] = ints[1];
            }
        }
        return ret;
    }

    public void createWaterPlan() {
        String incDate = date;      // Starts with the first day
        WaterPlan waterPlan = WaterPlan.getInstance();
		String[] time;
		int[] dateInfo;
		int hours, minutes, dateDistance;
		WaterSectorRecord record;
		StringBuilder auxString;

        for (int i = 0; i < 30; i++) {
            dateInfo = createDateInfo(incDate);
            for (int f = 0; f < this.hours.length; f++) {
                time = this.hours[f].split(":");
                hours = Integer.parseInt(time[0]);
                minutes = Integer.parseInt(time[1]);
                auxString = new StringBuilder();

                for (WaterSector sector : this.sectors) {
					record = new WaterSectorRecord();
					dateDistance = checkDateDistance(dateInfo);
                    if (checkWateringDay(sector.getRegularity(), dateInfo[0], dateDistance)) {
                        auxString.append(incDate + ", ");
                        if (minutes < 10) {
                            auxString.append(hours + ":0" + minutes + " - ");
                        } else {
                            auxString.append(hours + ":" + minutes + " - ");
                        }
                        minutes += sector.getDuration();
                        if (minutes >= 60) {
                            hours++;
                            minutes -= 60;
                        }
                        if (minutes < 10) {
                            auxString.append(hours + ":0" + minutes);
                        } else {
                            auxString.append(hours + ":" + minutes);
                        }

                        record.setDateHours(auxString.toString());
                        record.setSector(sector.getSector());
                        record.setQuantity(sector.getDuration());

						// utilizando o f == 0 ele apenas verifica se precisa de utilizar fator para o dia
						// nao contando com o setor ter de ser regado varias vezes
						// evita, por exemplo para regularidade = T e recorrencia = 3,
						// utilizar o fator 8:30 do 1º dia e posteriormente no 2º dia as 17:00
						// passando a ser no 1º e 4º dia as 8:30
						// se nao for o objetivo basta retirar esta condiçao
						if (f == 0 && sector.checkRecurrence())
							record.setMix(sector.getMix());

                        waterPlan.addWaterRecord(new WaterSectorRecord(record));
                        auxString.delete(0, auxString.length());
                    }
                }
            }
            incDate = Utils.incrementDate(incDate);
        }
        try {
            waterPlan.scheduleNextTask();
        } catch (ParseException e) {
            System.out.println("[Parse Error]");
        }
    }

}
