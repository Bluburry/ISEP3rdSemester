package project.ESINF;

import java.util.LinkedList;

public class Path {

    private LinkedList<Localidade> pathStops;
    private double pathDistance;
    private double duration;    //minutos
    private LinkedList<Localidade> rechargeStops;

    public Path(LinkedList<Localidade> stops, double distance) {
        this.pathDistance = distance;
        this.pathStops = stops;
        this.duration = 0;
        this.rechargeStops = new LinkedList<>();
    }

    public Path(LinkedList<Localidade> stops, double distance, double duration, LinkedList<Localidade> remainingHubs, LinkedList<Localidade> rechargeStops) {
        this.pathDistance = distance;
        this.pathStops = stops;
        this.duration = duration;
        this.rechargeStops = rechargeStops;
    }

    public Path(Path path){
        this.pathDistance = path.getPathDistance();
        this.pathStops = path.pathStops;
        this.duration = path.getDuration();
        this.rechargeStops = path.getRechargeStops();
    }

    public Path() {
        this.pathStops = new LinkedList<>();
        this.pathDistance = 0.0;
        this.duration = 0;
        this.rechargeStops = new LinkedList<>();
    }

//    @Override
//    public int compareTo(Path otherPath) {
//        // Compara para ver quem tem maior número de remainingHubs
//        return Integer.compare(otherPath.remainingHubs, this.remainingHubs);
//    }

    public double getPathDistance() {
        return pathDistance;
    }

    public LinkedList<Localidade> getPathStops() {
        return pathStops;
    }

    public double getDuration() {
        return duration;
    }

    public LinkedList<Localidade> getRechargeStops() {
        return rechargeStops;
    }

    public void setPathDistance(double pathDistance) {
        this.pathDistance = pathDistance;
    }

    public void setPathStops(LinkedList<Localidade> pathStops) {
        this.pathStops = pathStops;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }

    public void setRechargeStops(LinkedList<Localidade> rechargeStops) {
        this.rechargeStops = rechargeStops;
    }

    public void addDuration(double duration) {
        this.duration = this.duration + duration;
    }
    
    public void addPathStops(LinkedList<Localidade> newPathStops){
        this.pathStops.addAll(newPathStops);
    }

    public void addRechargeStops(LinkedList<Localidade> newRechargeStops){
        this.rechargeStops.addAll(newRechargeStops);
    }

    public void addRechargeStop(Localidade newRechargeStops){
        this.rechargeStops.add(newRechargeStops);
    }

    public void addDistance(double pathDistance) {
        this.pathDistance = this.pathDistance + pathDistance;
    }
}
