package project.ESINF;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ImportData {

    private static final ImportData instance = new ImportData();
    public static MapGraph<Localidade, Double> graph;

    static private Map<Localidade, String> hubs;

    private ImportData() {
        graph = new MapGraph<>(false);
        hubs = new HashMap<>();
    }

    public static boolean isInstanciated(){return graph.edges().size()!=0;}

    public static ImportData getInstance() {
        return instance;
    }

    public static void importData() throws FileNotFoundException {
        File distancias_big = new File("distancias_big.csv");
        File locais_big = new File("locais_big.csv");

        Map<String, Localidade> localidades = new HashMap<>();

        localidades = importLocalidades(locais_big, localidades);

        Scanner read = new Scanner(new FileReader(distancias_big));
        String[] line = new String[3];

        read.nextLine();
        while(read.hasNextLine()){
            line = read.nextLine().split(",");
            graph.addEdge(localidades.get((line[0])), localidades.get(line[1]),Double.parseDouble(line[2]));
        }

        importHorarios(localidades);
    }

    public static void importHorariosSmall() throws FileNotFoundException {
        File distancias_big = new File("distancias_big.csv");
        File locais_big = new File("locais_big.csv");

        Map<String, Localidade> localidades = new HashMap<>();

        localidades = importLocalidades(locais_big, localidades);

        Scanner read = new Scanner(new FileReader(distancias_big));
        String line[] = new String[3];

        read.nextLine();
        while(read.hasNextLine()){
            line = read.nextLine().split(",");
            graph.addEdge(localidades.get((line[0])), localidades.get(line[1]),Double.parseDouble(line[2]));
        }

        importHorariosForTest(localidades);
    }

    public static void importDataForTest() throws FileNotFoundException {
        File distancias_big = new File("distancias_small.csv");
        File locais_big = new File("locais_small.csv");

        Map<String, Localidade> localidades = new HashMap<>();

        localidades = importLocalidades(locais_big, localidades);

        Scanner read = new Scanner(new FileReader(distancias_big));
        String[] line = new String[3];

        read.nextLine();
        while(read.hasNextLine()){
            line = read.nextLine().split(",");
            graph.addEdge(localidades.get((line[0])), localidades.get(line[1]),Double.parseDouble(line[2]));
        }

    }

    public static MapGraph<Localidade, Double> getGraph(){return graph;}

    public static Map<String, Localidade> importLocalidades(File dists, Map<String, Localidade> localidades) throws FileNotFoundException {
        Scanner read = new Scanner(new FileReader(dists));
        String[] line = new String[3];
        Localidade loc;

        read.nextLine();

        while(read.hasNextLine()){
            line = read.nextLine().split(",");
            loc = new Localidade(line[0], Double.parseDouble(line[1]), Double.parseDouble(line[2]));
            localidades.put((line[0]), loc);
        }

        return localidades;
    }

    public static void importHorarios(Map<String, Localidade> localidades) throws FileNotFoundException {
        File hubs_horarios = new File("horarios_hubs.csv");



        Scanner read = new Scanner(new FileReader(hubs_horarios));
        String[] line = new String[3];

        while(read.hasNextLine()){
            localidades.get(line[0]);
            line = read.nextLine().split(",");

            String[] finalLine = line;
            graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0])).setHubTrue();

            if(!hubs.containsKey(graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0])))){
                hubs.put(graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0])), line[1] + " - " + line[2]);
            }else if(hubs.get(graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0]))).equals(line[1] + " - " + line[2])){
                Localidade loc = graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0]));
                hubs.replace(loc, hubs.get(loc), line[1] + " - " + line[2]);
            }
        }


    }

    public static void importHorariosForTest(Map<String, Localidade> localidades) throws FileNotFoundException {
        File hubs_horarios = new File("horarios_hubs_small.csv");



        Scanner read = new Scanner(new FileReader(hubs_horarios));
        String line[] = new String[3];

        while(read.hasNextLine()){
            localidades.get(line[0]);
            line = read.nextLine().split(",");

            String[] finalLine = line;
            graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0])).setHubTrue();

            if(!hubs.containsKey(graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0])))){
                hubs.put(graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0])), line[1] + " - " + line[2]);
            }else if(hubs.get(graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0]))).equals(line[1] + " - " + line[2])){
                Localidade loc = graph.vertex(p -> p.getIdLocalidade().equals(finalLine[0]));
                hubs.replace(loc, hubs.get(loc), line[1] + " - " + line[2]);
            }
        }


    }

    public static ArrayList<Localidade> getNBiggestHubs(int n){
        Localidade loc = null;
        int id=0,big = 999999;
        ArrayList<Localidade> nBiggestHubs  = new ArrayList<Localidade>();
        for (int i = 0; i < n; i++) {
            for (Localidade l : hubs.keySet()){
                int value= Integer.parseInt(l.getIdLocalidade().substring(2));
                if(id<value && value< big){
                    id = value;
                    loc=l;
                }

            }

            nBiggestHubs.add(loc);
            big = id;
            id=0;
        }

        return nBiggestHubs;

    }

    public static void addHub(Localidade loc){
        graph.vertex(graph.vertices.indexOf(loc)).setHubTrue();
    }

    public static Map<Localidade, String> getHubs() {
        return hubs;
    }

    /*
    private static void addNewEdges(Map<String, Localidade> localidades, MapGraph<> graph, File edges) throws FileNotFoundException {
        Scanner read = new Scanner(new FileReader(edges));
        String line[] = new String[3];

        read.nextLine();
        while(read.hasNextLine()){
            line = read.nextLine().split(",");
            graph.addEdge(localidades.get((line[0])), localidades.get(line[1]), new Edge<>(localidades.get((line[0])), localidades.get(line[1]), Double.parseDouble(line[2])));
        }



    }*/
}
