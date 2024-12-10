package project.ui.console.menu;

import project.ui.console.BasketManagerUI;
import project.ui.console.DevTeamUI;
import project.ui.console.utils.Utils;

import java.util.ArrayList;
import java.util.List;

public class MainMenuUI implements Runnable {

    public MainMenuUI() {
    }

    public void run() {
        List<MenuItem> options = new ArrayList<>();
        options.add(new MenuItem("Registar uma operação.", new RegistarOperacaoUI()));
        options.add(new MenuItem("Planear uma Rega.", new WaterPlannerUI()));
        options.add(new MenuItem("Distribuição de Cabazes.", new BasketManagerUI()));
        options.add(new MenuItem("Conhece a Development Team!", new DevTeamUI()));
        int option = 0;
        do {
            option = Utils.showAndSelectIndex(options, "\n\nMain Menu");

            if ((option >= 0) && (option < options.size())) {
                options.get(option).run();
            }
        } while (option != -1);

    }


}