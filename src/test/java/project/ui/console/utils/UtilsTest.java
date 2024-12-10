package project.ui.console.utils;

import jdk.jshell.execution.Util;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class UtilsTest {

    @Test
    void showList() {
    }

    @Test
    void selectsIndex() {
    }

    @Test
    void showAndSelectIndex() {
    }

    @Test
    void readLineFromConsole() {
    }

    @Test
    void validateFile() {
    }

    @Test
    void validateYesNoAnswer() {
    }

    @Test
    void validateHours() {
    }

    @Test
    void validateDate() {
    }

    @Test
    void incrementDate() {
    }

    @Test
    void convertTimeToMinutes() {
        assertEquals("10:27", Utils.convertMinutesToTime(627));
        assertEquals("09:00", Utils.convertMinutesToTime(540));
        assertEquals("10:00", Utils.convertMinutesToTime(600));
    }

    @Test
    void compareTimes() {
        assertTrue(Utils.compareTimes("02:45", "03:00"));
        assertTrue(Utils.compareTimes("23:45", "23:50"));
    }

    @Test
    void convertMinutesToTime() {
        assertEquals(540,Utils.convertTimeToMinutes("09:00"));
        assertEquals(600,Utils.convertTimeToMinutes("10:00"));
        assertEquals(627,Utils.convertTimeToMinutes("10:27"));
    }
}