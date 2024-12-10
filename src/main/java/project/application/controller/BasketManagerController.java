package project.application.controller;

import project.ESINF.*;

import java.io.FileNotFoundException;
import java.util.*;

public class BasketManagerController {
    private final Algorithms algorithms = new Algorithms();

    public boolean checkImport(){
        return ImportData.isInstanciated();
    }

    public void importBasketData() throws FileNotFoundException {
        ImportData.importData();
    }

    public StringBuilder getLongestDrivePath(double autonomia){
        StringBuilder print = new StringBuilder();

        Path path = algorithms.getLongestTrip(ImportData.getGraph());

        for (Localidade localidade : path.getPathStops()){

            if (path.getPathStops().getLast().getIdLocalidade().equalsIgnoreCase(localidade.getIdLocalidade())){
                print.append(localidade.getIdLocalidade());
            } else {
                print.append(localidade.getIdLocalidade() + " -> ");
            }
        }
        print.append("\nDistância: " + path.getPathDistance());

        print.append("\nParagens: " + algorithms.checkAutonomy(ImportData.getGraph(),autonomia,path));

        return print;
    }

    public void getMinimumPath(MapGraph<Localidade, Double> graph){
        List<Edge<Localidade, Double>>  minimumPath = Algorithms.shortestPathBetweenAll(graph);

        double total = 0;

        for (Edge<Localidade, Double> localidade : minimumPath) {
            total += localidade.getWeight();
            System.out.println(localidade.getVOrig().getIdLocalidade() + "--" + localidade.getVDest().getIdLocalidade() + " | Weight: " + localidade.getWeight());
        }
        System.out.println("Total Weight: " + total);

    }

    public boolean checkLocalidadeExists(String answer) {
        MapGraph<Localidade, Double> graph = ImportData.getGraph();
        return graph.validVertex(graph.vertex(p -> p.getIdLocalidade().equals(answer)));
    }

    public Localidade getLocalidadeWithID(String answer) {
        MapGraph<Localidade, Double> graph = ImportData.getGraph();
        return graph.vertex(p -> p.getIdLocalidade().equals(answer));
    }


    public void orderLocals(MapGraph<Localidade, Double> graph) {
        List<String> ordered = algorithms.limitarHubs(algorithms.ordenarLocalidades(graph), 10);
        for (String string : ordered) {
            System.out.println(string);
        }
    }

    public void getPathsOnlyAutonomy(MapGraph<Localidade, Double> graph, Localidade origem, Localidade destino, double autonomy, double averageSpeed){
        if(origem.equals(destino)){
            System.out.println(origem.getIdLocalidade());
            System.out.println("Distância percorrida: 0 Km | Tempo total de viagem: 0 h");
        }
        Map<LinkedList<Localidade>, double[]> pathInfo = algorithms.getAllAutonomousPaths(graph, origem, destino, autonomy, averageSpeed);
        for(LinkedList<Localidade> a : pathInfo.keySet()) {
            for (Localidade l : a) {
                if(l.getIdLocalidade().equals(destino.getIdLocalidade())) System.out.println(l.getIdLocalidade());
                else System.out.printf(l.getIdLocalidade() + "->");
            }
            System.out.format("Distância percorrida: %.2f Km | Tempo total de viagem: %.2f h \n\n", pathInfo.get(a)[0], pathInfo.get(a)[1]);
        }
    }

    public HubsPath maximumHubsPath(double autonomia, Localidade pontoDePartida, double tempoDescarga, double tempoCarga, double velocidadeMedia, String horaInicial) {
        HubsAlgorithms hubsAlgorithms = new HubsAlgorithms();
        return hubsAlgorithms.maximumHubsPath(autonomia, pontoDePartida, tempoDescarga, tempoCarga, velocidadeMedia, horaInicial);
    }

    public void gervanNewman(MapGraph<Localidade, Double> graph){
        Map<Localidade, List<Localidade>> hubClusters = algorithms.gervanNewman(graph);
        List<String> a = new ArrayList<>();
        int i = 0;
        for (Localidade cluster : hubClusters.keySet()) {
            System.out.println("Cluster Nº" + ++i + " | HUB: " + cluster);
            for (Localidade local : hubClusters.get(cluster)) {
                if(!a.contains(local.getIdLocalidade())){
                    a.add(local.getIdLocalidade());
                    System.out.println(local);
                }
            }
            System.out.println("\n");
        }
    }
}
