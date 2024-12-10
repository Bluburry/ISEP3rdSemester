package project.ui.console.menu;

import java.util.Objects;

public class MenuItem {
    private final String description;
    private final Runnable ui;

    public MenuItem(String description, Runnable ui) {
        if (description.equalsIgnoreCase("")) {
            throw new IllegalArgumentException("MenuItem description cannot be null or empty.");
        }
        if (Objects.isNull(ui)) {
            throw new IllegalArgumentException("MenuItem does not support a null UI.");
        }

        this.description = description;
        this.ui = ui;
    }
    public void run() {
        this.ui.run();
    }

    public String toString() {
        return this.description;
    }
}
