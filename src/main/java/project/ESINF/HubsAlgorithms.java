package project.ESINF;

import project.ui.console.utils.Utils;

import java.util.*;

public class HubsAlgorithms {
    private final Algorithms algorithms = new Algorithms();
    private static final MapGraph<Localidade, Double> graph = ImportData.getGraph();
    private static final Map<Localidade, String> hubs = ImportData.getHubs();

    public HubsPath maximumHubsPath(double autonomia, Localidade pontoDePartida, double tempoDescarga, double tempoCarga, double velocidadeMedia, String horaInicial) {
        Path optimalHubPath; // Hub possivel de alcançar com autonomia, com maior numero de remainingHubs aberto e que fecha primeiro
        Path absolutePath = new Path(/*Caminho Total, Distância total do percurso, Número de carregamentos, Tempo total */);
        ArrayList<String> arrivalTimes = new ArrayList<>(); //Hora de chegada a todos os locais e hora de partida nos hubs

        Map<Localidade, PathsToHubs> hubsList = createOptimalHubPaths(autonomia, velocidadeMedia, tempoCarga, pontoDePartida);

        do {
            optimalHubPath = getOptimalHubPath(pontoDePartida, hubsList, horaInicial, tempoDescarga, tempoCarga); //Vai buscar os hubs que esão abertos e é possivel lá chegar

            if (optimalHubPath.getDuration()!=0) {
                //Adicionar o caminho ao caminho total
                absolutePath.addPathStops(optimalHubPath.getPathStops());
                absolutePath.addDistance(optimalHubPath.getPathDistance());
                absolutePath.addRechargeStops(optimalHubPath.getRechargeStops());
                absolutePath.addDuration(optimalHubPath.getDuration());

                //Adicionar as horas de chegada a cada local
                addArrivalTimes(arrivalTimes, optimalHubPath, horaInicial, autonomia, velocidadeMedia, tempoCarga, tempoDescarga);

                //Remover o hub visitado
                hubsList.remove(pontoDePartida);

                //Seguir o caminho definido
                pontoDePartida = optimalHubPath.getPathStops().getLast();
                horaInicial = Utils.convertMinutesToTime(caculatesNewStartHour(horaInicial, tempoDescarga, optimalHubPath.getDuration(), tempoCarga)); //Assumo que quando chega a um hub, carregam o carro obrigatoriamente.
                absolutePath.addRechargeStop(pontoDePartida);   //Assumo que carrega sempre que chega a um hub.
            }
        } while (hubsList.size() != 1 && optimalHubPath.getDuration()!=0);

        if (hubsList.size() !=1){
            StringBuilder nonVisitedHubs = new StringBuilder();
            nonVisitedHubs.append("Hubs que não foram visitados: ");
            hubsList.remove(pontoDePartida);
            for (Localidade hub : hubsList.keySet()){
                   nonVisitedHubs.append(hub.getIdLocalidade()).append(", ");
            }
            nonVisitedHubs.delete(nonVisitedHubs.length()-2,nonVisitedHubs.length());
            nonVisitedHubs.append(".");
            arrivalTimes.add(nonVisitedHubs.toString());
        }

        return new HubsPath(absolutePath, arrivalTimes);
    }


    private Map<Localidade, PathsToHubs> createOptimalHubPaths(double autonomia, double velocidadeMedia, double tempoCarga, Localidade pontoDePartida) {
        Map<Localidade, PathsToHubs> hubsList = new HashMap<>();

        for (Localidade primaryHub : hubs.keySet()) {
            PathsToHubs newHub = new PathsToHubs();
            Set<Path> pathsToOtherHubs = new HashSet<>();
            for (Localidade destinationHub : hubs.keySet()) {
                if (!primaryHub.getIdLocalidade().equalsIgnoreCase(destinationHub.getIdLocalidade())) {
                    Path hubPath = new Path();
                    if (createOptimalPath(primaryHub, destinationHub, autonomia, velocidadeMedia, tempoCarga, hubPath)) {
                        pathsToOtherHubs.add(hubPath);
                    }
                }
            }
            newHub.setPathsToOtherHubs(pathsToOtherHubs);
            hubsList.put(new Localidade(primaryHub), new PathsToHubs(newHub));
        }

        PathsToHubs newHub = new PathsToHubs();
        Set<Path> pathsToOtherHubs = new HashSet<>();
        for (Localidade destinationHub : hubs.keySet()) {
            Path hubPath = new Path();
            if (createOptimalPath(pontoDePartida, destinationHub, autonomia, velocidadeMedia, tempoCarga, hubPath)) {
                pathsToOtherHubs.add(hubPath);
            }
        }

        newHub.setPathsToOtherHubs(pathsToOtherHubs);
        hubsList.put(new Localidade(pontoDePartida), new PathsToHubs(newHub));

        return hubsList;
    }

    //Percorre a lista toda de Hubs para ver quais é que são possiveis alcançar antes de fecharem
    private Path getOptimalHubPath(Localidade pontoPartida, Map<Localidade, PathsToHubs> hubsList, String horaInicial, double tempoDescarga, double tempoCarga) {
        Path optimalHubPath = new Path();
        int maxOpenHubs = 0;


        Set<Path> paths = hubsList.get(pontoPartida).getPathsToOtherHubs();

        for (Path path : paths) {
            if (hubIsOpen(path.getPathStops().getLast(), Utils.convertMinutesToTime(caculatesNewStartHour(horaInicial, 0.0, path.getDuration(), 0.0)))) {  //Checa se o hub está aberto quando lá chegarem.
                if (hubsList.get(path.getPathStops().getLast())!=null) {
                    updateRemainingOpenHubs(horaInicial, hubsList.get(path.getPathStops().getLast()), pontoPartida, tempoDescarga, tempoCarga, path.getDuration());

                    if (optimalHubPath.getDuration() != 0) {   //duration==0 é o default
                        if (maxOpenHubs < hubsList.get(path.getPathStops().getLast()).getRemainingOpenHubs()) { //Se o número de remainingHubs anterior for menor, então guarda o novo Path.
                            maxOpenHubs = hubsList.get(path.getPathStops().getLast()).getRemainingOpenHubs();
                            optimalHubPath = new Path(path);
                        } else if (maxOpenHubs == hubsList.get(path.getPathStops().getLast()).getRemainingOpenHubs()) { //Se forem iguais, então compara as horas de fechar.
                            if (checkIfClosesFirst(optimalHubPath.getPathStops().getLast(), path.getPathStops().getLast())) { //Confirma se a hora de fechar do anterior é mais tarde do que o novo.
                                optimalHubPath = new Path(path);     //Se for, muda para o novo Path
                            }
                        }
                    } else {            //Ou seja, ainda não tem nenhum Path.
                        maxOpenHubs = hubsList.get(path.getPathStops().getLast()).getRemainingOpenHubs();
                        optimalHubPath = new Path(path);
                    }
                }
            }
        }

        return optimalHubPath;
    }

    private void updateRemainingOpenHubs(String horaInicial, PathsToHubs hub, Localidade pontoPartida, double tempoDescarga, double tempoCarga, double duration) {
        int count = 0;
        for (Path path : hub.getPathsToOtherHubs()) {
            if (hubIsOpen(path.getPathStops().getLast(), Utils.convertMinutesToTime(caculatesNewStartHour(horaInicial, tempoDescarga, duration + path.getDuration(), tempoCarga)))) {
                count++;    //Se o novo hub está aberto quando chegar lá depois de ter passado pelo hub inicial.
            }
        }
        hub.setRemainingOpenHubs(count);
    }

    private boolean hubIsOpen(Localidade hub, String horaInical) {
        if (hubs.containsKey(hub)) {
            String timeWindow = hubs.get(hub);
            String[] openHours = timeWindow.split(" - ");

            return Utils.compareTimes(horaInical, openHours[1]) && Utils.compareTimes(openHours[0], horaInical);
        }
        return false;
    }

    private boolean checkIfClosesFirst(Localidade previous, Localidade next) {
        String[] previousClosingTime = hubs.get(previous).split(" - ");
        String[] nextClosingTime = hubs.get(next).split(" - ");

        return Utils.compareTimes(nextClosingTime[1], previousClosingTime[1]);       //Confirma se a hora de fechar do novo hub é mais cedo do que a do anterior
    }

    //Cria um HubPath se possivel com a autonomia do carro. Se não for retorna falso e um empty body.
    private boolean createOptimalPath(Localidade pontoPartida, Localidade hub, double autonomia, double velocidadeMedia, double tempoCarga, Path hubPath) {
        Double[] distances = new Double[graph.numVertices()];
        LinkedList<Localidade> path = Algorithms.shortestPathWithAutonomy(graph, pontoPartida, hub, autonomia, distances);

        if (path.isEmpty()) {
            return false; //Não foi possivel criar um caminho até ao hub que respeita-se a autonomia do carro
        } else {
            hubPath.setPathStops(path);
            hubPath.setPathDistance(distances[graph.key(hub)]); //Tecnicamente isto funciona, se não der -> adaptar estimateDuration() para adicionar tmb a distância
            hubPath.setDuration(estimateDuration(hubPath, autonomia, velocidadeMedia, tempoCarga));  //Prevê o tempo que demoraria o carro a chegar até ao hub (minutos)
        }
        return true; //Foi possivel criar um caminho até ao hub
    }

    private double estimateDuration(Path path, double autonomia, double velocidadeMedia, double tempoCarga) {
        double duration = 0;
        double deposito = autonomia;
        Localidade vOrigem = path.getPathStops().getFirst();
        Localidade vDestino;

        for (int i = 1; i < path.getPathStops().size(); i++) {
            vDestino = path.getPathStops().get(i);

            deposito = deposito - graph.edge(vOrigem, vDestino).getWeight();
            duration = duration + (graph.edge(vOrigem, vDestino).getWeight() / (velocidadeMedia*1000) * 60);

            if (deposito < 0) {
                path.addRechargeStop(vOrigem); //Guarda tmb as rechargeStops
                duration = duration + tempoCarga;
                deposito = autonomia - graph.edge(vOrigem, vDestino).getWeight();
            } else if (deposito == 0) {
                path.addRechargeStop(vDestino); //Guarda tmb as rechargeStops
                duration = duration + tempoCarga;
                deposito = autonomia;
            }
            vOrigem = vDestino;
        }
        return duration;
    }

    private double caculatesNewStartHour(String horaInicial, double tempoDescarga, double duration, double tempoCarga) {
        double minutosTotais = duration + tempoDescarga + tempoCarga + Utils.convertTimeToMinutes(horaInicial);

        while (minutosTotais > 1440) {   //Maior do que 24 horas
            minutosTotais = minutosTotais - 1440;
        }
        return minutosTotais;
    }

    private void addArrivalTimes(ArrayList<String> arrivalTime, Path path, String horaInicial, double autonomia, double velocidadeMedia, double tempoCarga, double tempoDescarga) {
        String auxiliar;
        double deposito = autonomia;
        double hora = Utils.convertTimeToMinutes(horaInicial);
        Localidade vOrigem = path.getPathStops().getFirst();
        Localidade vDestino;

        for (int i = 1; i < path.getPathStops().size(); i++) {
            vDestino = path.getPathStops().get(i);

            deposito = deposito - graph.edge(vOrigem, vDestino).getWeight();
            hora = hora + (graph.edge(vOrigem, vDestino).getWeight() / (velocidadeMedia*1000) * 60);

            if (deposito < 0) {
                hora = hora + tempoCarga;
                deposito = autonomia - graph.edge(vOrigem, vDestino).getWeight();
            } else if (deposito == 0) {
                hora = hora + tempoCarga;
                deposito = autonomia;
            }

            while (hora > 1440) {   //Maior do que 24 horas
                hora = hora - 1440;
            }

            auxiliar = vDestino + " - Hora de chegada: " + Utils.convertMinutesToTime(hora);

            if (path.getPathStops().get(i) == path.getPathStops().getLast()) {
                hora = caculatesNewStartHour(horaInicial, tempoDescarga, path.getDuration(), tempoCarga);
                auxiliar = auxiliar + " | Hora de Partida: " + Utils.convertMinutesToTime(hora);
            }

            arrivalTime.add(auxiliar);

            vOrigem = vDestino;
        }

    }
}
