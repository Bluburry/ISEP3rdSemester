package project.ui.console.menu;

import project.ui.console.ImportWaterPlanFileUI;
import project.ui.console.WaterControllerUI;
import project.ui.console.utils.Utils;

import java.util.ArrayList;
import java.util.List;

public class WaterPlannerUI implements Runnable{
    @Override
    public void run() {
        List<MenuItem> options = new ArrayList<>();
        options.add(new MenuItem("Consumir um ficheiro.", new ImportWaterPlanFileUI()));
        options.add(new MenuItem("Controlar um plano de rega.", new WaterControllerUI()));

        int option = 0;
        do {
            option = Utils.showAndSelectIndex(options, "\n\n==/== \nBem-vindo ao planeador de uma rega. \nAqui consegue usufrir de funcionalidades que simulam uma rega num campo importado através de um ficheiro!" +
                    "\n\nObserve as funcionalidades que estão atualmente disponiveis:");

            if ((option >= 0) && (option < options.size())) {
                options.get(option).run();
            }
        } while (option != -1);
    }
}
