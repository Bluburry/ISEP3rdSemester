package project.ESINF;

import java.util.HashSet;
import java.util.Set;

public class PathsToHubs {
    private int remainingOpenHubs;
    private Set<Path> pathsToOtherHubs;

    public PathsToHubs(){
        this.remainingOpenHubs = -1;
        this.pathsToOtherHubs = new HashSet<>();
    }

    public PathsToHubs(int remainingOpenHubs, Set<Path> pathsToOtherHubs){
        this.remainingOpenHubs = remainingOpenHubs;
        this.pathsToOtherHubs = pathsToOtherHubs;
    }

    public PathsToHubs(PathsToHubs copyHub){
        this.remainingOpenHubs = copyHub.getRemainingOpenHubs();
        this.pathsToOtherHubs = copyHub.getPathsToOtherHubs();
    }

    public int getRemainingOpenHubs() {
        return remainingOpenHubs;
    }

    public Set<Path> getPathsToOtherHubs() {
        return pathsToOtherHubs;
    }

    public void setPathsToOtherHubs(Set<Path> pathsToOtherHubs) {
        this.pathsToOtherHubs = pathsToOtherHubs;
    }

    public void setRemainingOpenHubs(int remainingOpenHubs) {
        this.remainingOpenHubs = remainingOpenHubs;
    }
}
