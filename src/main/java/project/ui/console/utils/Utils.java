package project.ui.console.utils;

import project.ESINF.ImportData;
import project.ESINF.Localidade;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

public class Utils {

    private static final int[] daysByMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    static public void showList(List list, String header) {
        System.out.println(header);

        int index = 0;
        for (Object o : list) {
            index++;

            System.out.println(index + ". " + o.toString());
        }
        System.out.println();
        System.out.println("0 - Cancelar operação");
    }

    public static int numeroCarregamentos(LinkedList<Localidade> path, int autonomy){
        int count=0;
        double number=0.0;

        for (int i = 0; i < path.size()-1; i++) {
            if(count + ImportData.getGraph().edge(path.get(i), path.get(i+1)).getWeight() > autonomy){
                number=0;
                count++;
            }else{number += ImportData.getGraph().edge(path.get(i), path.get(i+1)).getWeight();}
        }


        return count;

    }
    static public int selectsIndex(List list) {
        String input;
        int value;
        do {
            input = Utils.readLineFromConsole("Escolha uma opção: ");
            try {
                value = Integer.parseInt(input);
            } catch (NumberFormatException ex) {
                value = -1;
            }
        } while (value < 0 || value > list.size());

        return value - 1;
    }

    static public int showAndSelectIndex(List list, String header) {
        showList(list, header);
        return selectsIndex(list);
    }

    static public String readLineFromConsole(String prompt) {
        try {
            System.out.println("\n" + prompt);

            InputStreamReader converter = new InputStreamReader(System.in);
            BufferedReader in = new BufferedReader(converter);

            return in.readLine();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean validateFile(String filePath) {
        File file = new File(filePath);
        return file.exists() && file.length() > 0;
    }

    public static boolean validateYesNoAnswer(String input) {
        return Pattern.matches("^[SNsn]{1}$|^[Nn]{1}[aã]{1}[o]$|^[Ss]{1}[i]{1}[m]$|^[YNyn]{1}$|^[Nn]{1}[o]$|^[Yy]{1}[e]{1}[s]{1}$", input);
    }

    public static boolean validateHours(String hours) {
        if (!Pattern.matches("^[0-9]{1,2}:[0-9]{1,2}(, [0-9]{1,2}:[0-9]{1,2})*$", hours.trim()))
            return false;
        int[][] time = new int[hours.split(",").length][2];
        int i = -1;
        for (String h : hours.split(",")) {
            time[++i][0] = Integer.parseInt(h.split(":")[0]);
            time[i][1] = Integer.parseInt(h.split(":")[1]);
        }
        for (int[] ints : time) {
            if (ints[0] > 24 || ints[0] < 0 || ints[1] < 0 || ints[1] > 60)
                return false;
        }
        return true;
    }

    public static boolean validateDate(String date) {
        if (!Pattern.matches("^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$", date.trim()))
            return false;
        int day = Integer.parseInt(date.split("/")[0]),
                month = Integer.parseInt(date.split("/")[1]),
                year = Integer.parseInt(date.split("/")[2]);
        if (month > 12 || month < 1)
            return false;
        else if ((day < 1 || day > daysByMonth[month - 1]) &&
                (month != 2 || !(year % 400 == 0 || (year % 4 == 0 && year % 100 == 0))))
            return false;
        else if ((year % 400 == 0 || (year % 4 == 0 && year % 100 == 0)) &&
                month == 2 && (day > 29 || day < 1))
            return false;
        return true;
    }

    public static String incrementDate(String incDate) {
        int dateInfo[] = new int[3];

        dateInfo[0] = Integer.parseInt(incDate.split("/")[0]);
        dateInfo[1] = Integer.parseInt(incDate.split("/")[1]);
        dateInfo[2] = Integer.parseInt(incDate.split("/")[2]);

        dateInfo[0]++;
        if (!validateDate(dateInfo[0] + "/" + dateInfo[1] + "/" + dateInfo[2])) {
            dateInfo[0] = 1;
            dateInfo[1]++;
        }
        if (!validateDate(dateInfo[0] + "/" + dateInfo[1] + "/" + dateInfo[2])) {
            dateInfo[1] = 1;
            dateInfo[2]++;
        }
        return dateInfo[0] + "/" + dateInfo[1] + "/" + dateInfo[2];
    }

    public static int convertTimeToMinutes(String hours) {     //HH:mm
        String[] time = hours.split(":");
        int[] timeValues = {Integer.parseInt(time[0]), Integer.parseInt(time[1])};
        return (timeValues[0] * 60) + (timeValues[1]);
    }

    public static boolean compareTimes(String earlier, String later) {
        return convertTimeToMinutes(earlier) < convertTimeToMinutes(later);
    }

    public static String convertMinutesToTime(double time) {
        int minutes = (int) time;
        String output = "";

        if (minutes / 60 < 10) {
            output = "" + 0 + minutes / 60 + ":";
        } else {
            output = minutes / 60 + ":";
        }

        if (minutes - (minutes / 60) * 60 < 10) {
            output = output + 0 + (minutes - (minutes / 60) * 60);
        } else {
            output = output + (minutes - (minutes / 60) * 60);
        }

        return output;
    }
}
