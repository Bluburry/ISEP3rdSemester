package project.ESINF;

import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

class ImportDataTest {
    File locais = new File("locais_big.csv");
    File distancias = new File("distancias_big.csv");
    Random ran = new Random();
    int ID = ran.nextInt(17);

    @Test
    void testVertexes() throws FileNotFoundException {
        ImportData.importData();
        MapGraph<Localidade, Double> graph = ImportData.getGraph();
        boolean l = graph.validVertex(graph.vertex(4));

        ImportData.importData();

        while (ImportData.getGraph().vertex(ID) == null) {
            ID = ran.nextInt(17);
        }

        String val = "CT" + String.valueOf(ID);


        Map<String, Localidade> map = ImportData.importLocalidades(locais, new HashMap<String, Localidade>());

        assertTrue(ImportData.getGraph().validVertex(map.get(val)));

    }

    @Test
    void testArestas() throws FileNotFoundException {
        ImportData.importData();
        MapGraph<Localidade, Double> graph = ImportData.getGraph();

        Scanner read = new Scanner(new FileReader(distancias));

        int n = 0;
        int n2 = graph.edges().size();
        read.nextLine();
        while (read.hasNextLine()) {
            n++;
            read.nextLine();
        }

        assertTrue(graph.edges().size() == n * 2);
    }

    @Test
    void testWeight() throws FileNotFoundException {
        ImportData.importData();
        MapGraph<Localidade, Double> graph = ImportData.getGraph();
        Map<String, Localidade> map = ImportData.importLocalidades(locais, new HashMap<String, Localidade>());

        Scanner read = new Scanner(new FileReader(distancias));
        String line[] = new String[3];

        read.nextLine();
        while (read.hasNextLine()) {
            line = read.nextLine().split(",");
            assertTrue((graph.edge(map.get(line[0]), map.get(line[1])).getWeight()) == Double.parseDouble(line[2]));
        }
    }

    @Test
    void getNBiggestHubs() throws FileNotFoundException {
        ImportData.importData();
        ArrayList<Localidade> hubs =ImportData.getNBiggestHubs(5);

        hubs.contains(ImportData.getGraph().vertex(p -> p.getIdLocalidade().equals("CT288")));
        hubs.contains(ImportData.getGraph().vertex(p -> p.getIdLocalidade().equals("CT286")));
        hubs.contains(ImportData.getGraph().vertex(p -> p.getIdLocalidade().equals("CT270")));
        hubs.contains(ImportData.getGraph().vertex(p -> p.getIdLocalidade().equals("CT222")));
        hubs.contains(ImportData.getGraph().vertex(p -> p.getIdLocalidade().equals("CT219")));
    }
}