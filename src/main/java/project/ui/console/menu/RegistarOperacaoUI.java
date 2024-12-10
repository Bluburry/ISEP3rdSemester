package project.ui.console.menu;

import project.ui.console.RegisterColheitaUI;
import project.ui.console.RegisterMondaUI;
import project.ui.console.RegistarSemeaduraUI;
import project.ui.console.RegisterAplicacaoUI;
import project.ui.console.utils.Utils;

import java.util.ArrayList;
import java.util.List;

public class RegistarOperacaoUI implements Runnable {
    @Override
    public void run() {
        List<MenuItem> options = new ArrayList<>();
        options.add(new MenuItem("Registar uma operação de colheita.", new RegisterColheitaUI()));
        options.add(new MenuItem("Registar uma operação de monda.", new RegisterMondaUI()));
        options.add(new MenuItem("Registar uma operação de aplicação de fator.", new RegisterAplicacaoUI()));
        options.add(new MenuItem("Registar uma operação de semeadura.", new RegistarSemeaduraUI()));

        int option = 0;
        do {
            option = Utils.showAndSelectIndex(options, "\n\nMain Menu");

            if ((option >= 0) && (option < options.size())) {
                options.get(option).run();
            }
        } while (option != -1);
    }
}
