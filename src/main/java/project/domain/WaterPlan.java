package project.domain;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import project.application.controller.RegisterOperationController;

public class WaterPlan {
    // For lack of a better name, este é o caderno de campo

    private final ArrayList<WaterSectorRecord> waterRecords = new ArrayList<>();
    private int lastRowSent = 0;
    private static WaterPlan instance = null;
        RegisterOperationController controller = new RegisterOperationController();

    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    /**
     * Retorna o DataBaseWaterRecords que existe, caso exista. Senão, cria um sem nada.
     *
     * @return DataBaseWaterRecords
     */
    public static WaterPlan getInstance() {
        if (instance == null) {
            instance = new WaterPlan();
        }
        return instance;
    }

    public ArrayList<WaterSectorRecord> getWaterRecords() {
        return waterRecords;
    }

    public int getLastRowSent() {
        return lastRowSent;
    }

    public void addWaterRecord(WaterSectorRecord record) {
        this.waterRecords.add(record);
    }

    public void scheduleNextTask() throws ParseException {
        // Schedule the next task only if the executor service is not shutdown
        if (!scheduler.isShutdown()) {
            WaterSectorRecord nextRecord = waterRecords.get(lastRowSent);
            scheduler.schedule(() -> {
                // Perform the task (e.g., send information to the external database)
                sendToExternalDatabase(nextRecord);

                // Update lastRowSent and schedule the next task if there are more records
                lastRowSent++;
                if (lastRowSent < waterRecords.size()) {
                    try {
                        scheduleNextTask();
                    } catch (ParseException e) {
                        System.out.println("[Parse Error]");
                    }
                }
            }, calculateDelay(nextRecord), TimeUnit.MILLISECONDS);
        }
    }

    private long calculateDelay(WaterSectorRecord record) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy, HH:mm");
        String date[] = record.getDateHours().split(", ");
        String hour[] = date[1].split(" - ");
        String finalString = date[0] + ", " + hour[1];
        Date scheduledDate = dateFormat.parse(finalString);
        return scheduledDate.getTime() - System.currentTimeMillis();

    }

    private void sendToExternalDatabase(WaterSectorRecord record) {
        System.out.println("Sending to external database: " + record);
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date diaOp;
        try {
            diaOp = formatter.parse(record.getDateHours());
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

		if (record.getMix() == null) {
			try {
				controller.registerRega(record.getSector(), diaOp, record.getQuantity());
			} catch (SQLException e) {
				System.out.println(e.getMessage().split("\n")[0]);
			}
		}

		else {
			try {
				int helper = Integer.parseInt(record.getMix().replaceAll("[^0-9]", ""));
				controller.registarFertirrega(record.getSector(), diaOp, record.getQuantity(), helper);
			} catch (SQLException e) {
				System.out.println(e.getMessage().split("\n")[0]);
			}
		}
    }


}
