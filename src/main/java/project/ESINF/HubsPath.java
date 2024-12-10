package project.ESINF;

import java.util.ArrayList;

public class HubsPath {

    private Path pathInformation;
    private ArrayList<String> hoursInformation;

    public HubsPath(){
        this.pathInformation = new Path();
        this.hoursInformation = new ArrayList<>();
    }

    public HubsPath(Path path, ArrayList<String> hours){
        this.pathInformation = path;
        this.hoursInformation = hours;
    }

    public ArrayList<String> getHoursInformation() {
        return hoursInformation;
    }

    public Path getPathInformation() {
        return pathInformation;
    }

    public void setHoursInformation(ArrayList<String> hoursInformation) {
        this.hoursInformation = hoursInformation;
    }

    public void setPathInformation(Path pathInformation) {
        this.pathInformation = pathInformation;
    }
}
