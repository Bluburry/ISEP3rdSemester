package project.ESINF;

import org.junit.jupiter.api.Test;

import java.io.FileNotFoundException;
import java.util.LinkedList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static project.ESINF.ImportData.getNBiggestHubs;
import static project.ESINF.ImportData.graph;

class AlgorithmsTest {

    private Algorithms algorithms = new Algorithms();
    private void importDataOnce(){
        if (!ImportData.isInstanciated()) {
            try {
                ImportData.importDataForTest();
            } catch (FileNotFoundException e) {
                throw new RuntimeException(e);
            }

        }
    }

    /**
     * Checks if the longest trip Distance is correct.
     */
    @Test
    void checkLongestTripDistance() {
        importDataOnce();

        Path actual = algorithms.getLongestTrip(ImportData.getGraph());

        assertEquals(605261.0,actual.getPathDistance());
    }

    /**
     * Checks if the longest trip Stops are correct.
     */
    @Test
    void checkLongestTripStops() {
        importDataOnce();
        LinkedList<Localidade> expectedStops = new LinkedList<>();
        //Retirado diretamente do Ficheiro
        expectedStops.add(new Localidade("CT15",41.7,-8.8333));
        expectedStops.add(new Localidade("CT12",41.1495,-8.6108));
        expectedStops.add(new Localidade("CT1",40.6389,-8.6553));
        expectedStops.add(new Localidade("CT10",39.7444,-8.8072));
        expectedStops.add(new Localidade("CT13",39.2369,-8.685));
        expectedStops.add(new Localidade("CT14",38.5243,-8.8926));
        expectedStops.add(new Localidade("CT8",37.0161,-7.935));

        Path actual = algorithms.getLongestTrip(ImportData.getGraph());

        for (int i = 0; i < expectedStops.size(); i++) {
            assertEquals(expectedStops.get(i),actual.getPathStops().get(i));
        }
    }

    /**
     * Check an example where the autonomy is possible
     */
    @Test
    void checkAutonomyPossible() {
        importDataOnce();
        Double autonomia = 290000.0;

        String expected = "CT15 -> CT12 -> CT1 -> CT10 -> CT13 -> CT14 -> CT8\n" +
                "Distância: 605261.0\n" +
                "Paragens: CT10, CT14\n" +
                "Número de Paragens: 2";

        //Actual
        StringBuilder actual = new StringBuilder();
        Path actualPath = algorithms.getLongestTrip(ImportData.getGraph());

        for (Localidade localidade : actualPath.getPathStops()){

            if (actualPath.getPathStops().getLast().getIdLocalidade().equalsIgnoreCase(localidade.getIdLocalidade())){
                actual.append(localidade.getIdLocalidade());
            } else {
                actual.append(localidade.getIdLocalidade() + " -> ");
            }
        }
        actual.append("\nDistância: " + actualPath.getPathDistance());

        actual.append("\nParagens: " + algorithms.checkAutonomy(ImportData.getGraph(),autonomia,actualPath));

        assertEquals(expected,actual.toString());
    }

    /**
     * Check an example where the autonomy is impossible.
     */
    @Test
    void checkAutonomyImpossible() {
        importDataOnce();
        Double autonomia = 100.0;

        String expected = "CT15 -> CT12 -> CT1 -> CT10 -> CT13 -> CT14 -> CT8\n" +
                "Distância: 605261.0\n" +
                "Paragens: É impossivel realizar esta viagem, visto que a autonomia não alcança a distância entre dois pontos de paragem, para cumprir a viagem com menor percurso possível:\n" +
                "CT15 -> CT12 = 70717.0m\n" +
                "Autonomia: 100.0m";

        //Actual
        StringBuilder actual = new StringBuilder();
        Path actualPath = algorithms.getLongestTrip(ImportData.getGraph());

        for (Localidade localidade : actualPath.getPathStops()){

            if (actualPath.getPathStops().getLast().getIdLocalidade().equalsIgnoreCase(localidade.getIdLocalidade())){
                actual.append(localidade.getIdLocalidade());
            } else {
                actual.append(localidade.getIdLocalidade() + " -> ");
            }
        }
        actual.append("\nDistância: " + actualPath.getPathDistance());

        actual.append("\nParagens: " + algorithms.checkAutonomy(ImportData.getGraph(),autonomia,actualPath));

        assertEquals(expected,actual.toString());
    }


    @Test
    void OLNotNull() {
        importDataOnce();
        List<String> lt = algorithms.ordenarLocalidades(ImportData.getGraph());
        assertNotNull(lt);
    }

    List<String> l;
    {
        importDataOnce();
        l = algorithms.ordenarLocalidades(ImportData.getGraph());
    }

    @Test
    void testOLSize() {
        assertEquals(17, l.size());
    }

    @Test
    void testOLCorrectNumOfLocals() {
        int n = 0;
        List<Localidade> lt = ImportData.getGraph().vertices;
        String find;
        for (Localidade lc : lt) {
            find = lc.getIdLocalidade() + ",";
            for(String s : l) {
                if (s.contains(find)) {
                    n++;
                }
            }
        }
        assertEquals(lt.size(), n);
    }

//  "Localidade: CT10, horario: 9h:00 - 14h:00 | Criterios: influencia: 5, proximidade: 2979452, centralidade: 74."
    @Test
    void testOLCorrectTime() {
        String t1, t2, t3;
        int ilc;
        for(String s : l) {
            t1 = s.substring(12, s.indexOf(","));
            t2 = s.substring(s.indexOf(",") + 11, s.indexOf('|') - 1);
            ilc = Integer.parseInt(t1.substring(2));
            if (ilc <= 105)
                t3 = "9h:00 - 14h:00";
            else if (ilc <= 215)
                t3 = "11h:00 - 16h:00";
            else
                t3 = "12h:00 - 17h:00";
            assertEquals(t2, t3);
        }
        assertTrue(true);
    }

    @Test
    void testOLValues1() {
        // CT9, influencia = 4
        int inf = 0;
        for (String s : l) {
            if (s.contains("CT9")) {
                inf = Integer.parseInt(s.substring(s.indexOf("influencia") + 12, s.indexOf("influencia") + 13));
                break;
            }
        }
        assertEquals(4, inf);
    }

    @Test
    void testOLValues2() {
        // CT9, proximidade = 3384411
        String helper;
        int inf = 0;
        for (String s : l) {
            if (s.contains("CT9")) {
                helper = s.substring(s.indexOf("proximidade") + 13);
                helper = helper.substring(0, helper.indexOf(","));
                inf = Integer.parseInt(helper);
                break;
            }
        }
        assertEquals(3384411, inf);
    }

    @Test
    void testOLValues3() {
        // CT9, centralidade: 8
        String helper;
        int inf = 0;
        for (String s : l) {
            if (s.contains("CT9")) {
                helper = s.substring(s.indexOf("centralidade") + 14);
                helper = helper.substring(0, helper.indexOf("."));
                inf = Integer.parseInt(helper);
                break;
            }
        }
        assertEquals(8, inf);
    }

    @Test
    void testOLValues4() {
        // CT14, influencia = 4
        int inf = 0;
        for (String s : l) {
            if (s.contains("CT14")) {
                inf = Integer.parseInt(s.substring(s.indexOf("influencia") + 12, s.indexOf("influencia") + 13));
                break;
            }
        }
        assertEquals(4, inf);
    }

    @Test
    void testOLValues5() {
        // CT14, proximidade = 4244871
        String helper;
        int inf = 0;
        for (String s : l) {
            if (s.contains("CT14")) {
                helper = s.substring(s.indexOf("proximidade") + 13);
                helper = helper.substring(0, helper.indexOf(","));
                inf = Integer.parseInt(helper);
                break;
            }
        }
        assertEquals(4244871, inf);
    }

    @Test
    void testOLValues6() {
        // CT14, centralidade: 14
        String helper;
        int inf = 0;
        for (String s : l) {
            if (s.contains("CT14")) {
                helper = s.substring(s.indexOf("centralidade") + 14);
                helper = helper.substring(0, helper.indexOf("."));
                inf = Integer.parseInt(helper);
                break;
            }
        }
        assertEquals(14, inf);
    }

    @Test
    void testOLOrder() {
        int prevInf = 0, prevProx = 0, prevCentr = 0;
        int curInf = 0, curProx = 0, curCentr = 0;
        String helper;
        for (String s : l) {
            curInf = Integer.parseInt(s.substring(s.indexOf("influencia") + 12, s.indexOf("influencia") + 13));
            helper = s.substring(s.indexOf("proximidade") + 13);
            helper = helper.substring(0, helper.indexOf(","));
            curProx = Integer.parseInt(helper);
            helper = s.substring(s.indexOf("centralidade") + 14);
            helper = helper.substring(0, helper.indexOf("."));
            curCentr = Integer.parseInt(helper);
            if (prevInf == 0) {
                prevInf = curInf;
                prevProx = curProx;
                prevCentr = curCentr;
                continue;
            }
            assertTrue(prevCentr > curCentr || 
                    (prevCentr == curCentr && prevInf > curInf) ||
                    (prevCentr == curCentr && prevInf == curInf && prevProx < curProx));
            prevInf = curInf;
            prevProx = curProx;
            prevCentr = curCentr;
        }
    }

    @Test
    void checkSizeOfPath(){
        List<Edge<Localidade, Double>> kruskal = Algorithms.shortestPathBetweenAll(ImportData.getGraph());
        assertEquals(kruskal.size(), ImportData.getGraph().numVerts-1);
    }

    @Test
    void checkShortestPathTotalWeight(){
        List<Edge<Localidade, Double>> kruskal = Algorithms.shortestPathBetweenAll(ImportData.getGraph());
        double total = 1185232;

        double totalCheck = 0;
        for (Edge<Localidade, Double> localidade : kruskal) {
            totalCheck += localidade.getWeight();
        }
        assertEquals(total, totalCheck);
    }

    @Test
    void testLimitarHubs() {
        List<String> test = algorithms.limitarHubs(l, 5);
        assertEquals(5, test.size());
    }

    //@Test
    void testAllLocations() {
        try {
            ImportData.importData();
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
        MapGraph<Localidade, Double>  g = ImportData.getGraph();
        List<String> lt = algorithms.ordenarLocalidades(g);
        assertNotNull(lt);
        assertEquals(g.numVertices(), lt.size());
    }

    @Test
    void travellingSalesmanVerticesConnected() throws FileNotFoundException {

        LinkedList<Localidade> circuito = Algorithms.travellingSalesman(7,"CT202",2000000);
        MapGraph<Localidade, Double> graph = ImportData.getGraph();

        for (int i = 0; i < circuito.size()-1; i++) {
            assertTrue(graph.getMapVertices().get(circuito.get(i)).getEdge(circuito.get(i+1)) != null || graph.getMapVertices().get(circuito.get(i+1)).getEdge(circuito.get(i)) != null);
        }

        circuito = Algorithms.travellingSalesman(6,"CT223",2000000);
        graph = ImportData.getGraph();

        for (int i = 0; i < circuito.size()-1; i++) {
            assertTrue(graph.getMapVertices().get(circuito.get(i)).getEdge(circuito.get(i+1)) != null || graph.getMapVertices().get(circuito.get(i+1)).getEdge(circuito.get(i)) != null);
        }
    }

    @Test
    void travellingSalesmanContainsHubs() throws FileNotFoundException {
        LinkedList<Localidade> circuito = Algorithms.travellingSalesman(5,"CT202",2000000);
        assertTrue(circuito.containsAll(getNBiggestHubs(5)));
    }

    @Test
    void travellingSalesmanReturnsToStart() throws FileNotFoundException {
        LinkedList<Localidade> circuito = Algorithms.travellingSalesman(5,"CT202", 2000000);
        int count=0;
        for (Localidade l: circuito){
            if(l.getIdLocalidade().equals("CT202")){
                count++;
            }
        }

        assertEquals(count,2);
    }
}