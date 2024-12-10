package project.ESINF;


import java.io.FileNotFoundException;
import java.util.*;
import java.util.function.BinaryOperator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Algorithms {

    /**
     * Performs breadth-first search of a Graph starting in a vertex
     *
     * @param g    Graph instance
     * @param vert vertex that will be the source of the search
     * @return a LinkedList with the vertices of breadth-first search
     */
    public static <V, E> LinkedList<V> BreadthFirstSearch(Graph<V, E> g, V vert) {

        if (!g.validVertex(vert))
            return null;

        LinkedList<V> qbfs = new LinkedList<>();
        LinkedList<V> qaux = new LinkedList<>();
        boolean[] visited = new boolean[g.numVertices()];  //default initializ.: false

        qbfs.add(vert);
        qaux.add(vert);
        int vKey = g.key(vert);
        visited[vKey] = true;

        while (!qaux.isEmpty()) {
            vert = qaux.remove();
            for (V vAdj : g.adjVertices(vert)) {
                vKey = g.key(vAdj);
                if (!visited[vKey]) {
                    qbfs.add(vAdj);
                    qaux.add(vAdj);
                    visited[vKey] = true;
                }
            }
        }
        return qbfs;
    }

    public static Map<List<Localidade>, Double> BreadthFirstSearchWithBetweeness(Graph<Localidade, Double> g, Localidade vert) {

        if (!g.validVertex(vert))
            return null;

        LinkedList<Localidade> qbfs = new LinkedList<>();
        LinkedList<Localidade> qaux = new LinkedList<>();
        boolean[] visited = new boolean[g.numVertices()];  //default initializ.: false

        qbfs.add(vert);
        qaux.add(vert);
        int vKey = g.key(vert);
        visited[vKey] = true;

        Double[] i = new Double[g.numVertices()];
        Arrays.fill(i, 1.0);
        Map<List<Localidade>, Double> map = new HashMap<>();
        while (!qaux.isEmpty()) {
            vert = qaux.remove();
            List<Localidade> edge = new ArrayList<>();
            for (Localidade vAdj : g.adjVertices(vert)) {
                edge = new ArrayList<>();
                vKey = g.key(vAdj);
                if (!visited[vKey]) {

                    i[vKey] += (i[g.key(vert)] + 1.0)/g.adjVertices(vert).size();

                    qbfs.add(vAdj);
                    qaux.add(vAdj);

                    edge.add(vAdj);
                    edge.add(vert);
                    map.put(edge, i[vKey]);

                    visited[vKey] = true;
                }
            }


        }
        return map;
    }
    /**
     * Performs depth-first search starting in a vertex
     *
     * @param g       Graph instance
     * @param vOrig   vertex of graph g that will be the source of the search
     * @param visited set of previously visited vertices
     * @param qdfs    return LinkedList with vertices of depth-first search
     */
    private static <V, E> void DepthFirstSearch(Graph<V, E> g, V vOrig, boolean[] visited, LinkedList<V> qdfs) {

        int vKey = g.key(vOrig);
        if (visited[vKey]) return;

        qdfs.add(vOrig);
        visited[vKey] = true;

        for (V vAdj : g.adjVertices(vOrig)) {
            DepthFirstSearch(g, vAdj, visited, qdfs);
        }

    }

    /**
     * Performs depth-first search starting in a vertex
     *
     * @param g    Graph instance
     * @param vert vertex of graph g that will be the source of the search
     * @return a LinkedList with the vertices of depth-first search
     */
    public static <V, E> LinkedList<V> DepthFirstSearch(Graph<V, E> g, V vert) {
        if (!g.validVertex(vert))
            return null;

        LinkedList<V> qdfs = new LinkedList<>();
        boolean[] visited = new boolean[g.numVertices()];

        DepthFirstSearch(g, vert, visited, qdfs);

        return qdfs;
    }

    /**
     * Returns all paths from vOrig to vDest
     *
     * @param g       Graph instance
     * @param vOrig   Vertex that will be the source of the path
     * @param vDest   Vertex that will be the end of the path
     * @param visited set of discovered vertices
     * @param path    stack with vertices of the current path (the path is in reverse order)
     * @param paths   ArrayList with all the paths (in correct order)
     */
    private static <V, E> void allPaths(Graph<V, E> g, V vOrig, V vDest, boolean[] visited,
                                        LinkedList<V> path, ArrayList<LinkedList<V>> paths) {

        int vKey = g.key(vOrig);
        if (visited[vKey]) return;

        if (vOrig.equals(vDest)) {
            LinkedList<V> pathcopy = new LinkedList<>(path);
            pathcopy.addFirst(vDest);
            Collections.reverse(pathcopy);
            paths.add(new LinkedList<>(pathcopy));
            return;
        }

        path.push(vOrig);
        visited[vKey] = true;

        for (V vAdj : g.adjVertices(vOrig)) {
            allPaths(g, vAdj, vDest, visited, path, paths);
        }

        path.pop();
        visited[vKey] = false;
    }

    /**
     * Returns all paths from vOrig to vDest
     *
     * @param g     Graph instance
     * @param vOrig information of the Vertex origin
     * @param vDest information of the Vertex destination
     * @return paths ArrayList with all paths from vOrig to vDest
     */
    public static <V, E> ArrayList<LinkedList<V>> allPaths(Graph<V, E> g, V vOrig, V vDest) {

        LinkedList<V> path = new LinkedList<>();
        ArrayList<LinkedList<V>> paths = new ArrayList<>();
        boolean[] visited = new boolean[g.numVertices()];

        if (g.validVertex(vOrig) && g.validVertex(vDest))
            allPaths(g, vOrig, vDest, visited, path, paths);

        return paths;
    }

    /**
     * Computes shortest-path distance from a source vertex to all reachable
     * vertices of a graph g with non-negative edge weights
     * This implementation uses Dijkstra's algorithm
     *
     * @param g        Graph instance
     * @param vOrig    Vertex that will be the source of the path
     * @param visited  set of previously visited vertices
     * @param pathKeys minimum path vertices keys
     * @param dist     minimum distances
     */
    private static <V, E> void shortestPathDijkstra(Graph<V, E> g, V vOrig,
                                                    Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                                    boolean[] visited, V[] pathKeys, E[] dist) {


        int vkey = g.key(vOrig);
        dist[vkey] = zero;
        pathKeys[vkey] = vOrig;
        while (vOrig != null) {
            vkey = g.key(vOrig);
            visited[vkey] = true;
            for (Edge<V, E> edge : g.outgoingEdges(vOrig)) {
                int vkeyAdj = g.key(edge.getVDest());
                if (!visited[vkeyAdj]) {
                    E s = sum.apply(dist[vkey], edge.getWeight());
                    if (dist[vkeyAdj] == null || ce.compare(dist[vkeyAdj], s) > 0) {
                        dist[vkeyAdj] = s;
                        pathKeys[vkeyAdj] = vOrig;
                    }
                }
            }
            E minDist = null;
            vOrig = null;
            for (V vert : g.vertices()) {
                int i = g.key(vert);
                if (!visited[i] && (dist[i] != null) && ((minDist == null) || ce.compare(dist[i], minDist) < 0)) {
                    minDist = dist[i];
                    vOrig = vert;
                }
            }
        }

    }



    public static <V, E> void shortestPathDijkstraWithAutonomy(Graph<V, E> g, V vOrig,
                                                               Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                                               boolean[] visited, V[] pathKeys, E[] dist, E autonomia) {

        int vKey = g.key(vOrig);
        dist[vKey] = zero;
        pathKeys[vKey] = vOrig;

        while (vOrig != null) {
            vKey = g.key(vOrig);
            visited[vKey] = true;
            for (Edge<V, E> edge : g.outgoingEdges(vOrig)) {
                int keyVAdj = g.key(edge.getVDest());
                if (!visited[keyVAdj]) {
                    E s = sum.apply(dist[vKey], edge.getWeight());
                    if ((dist[keyVAdj] == null || ce.compare(dist[keyVAdj], s) > 0) && ce.compare(autonomia, edge.getWeight()) > 0) {
                        dist[keyVAdj] = s;
                        pathKeys[keyVAdj] = vOrig;
                    }
                }
            }

            E minDist = null;
            vOrig = null;
            for (V vertex : g.vertices()) {
                int vertexKey = g.key(vertex);
                if (!visited[vertexKey] && (dist[vertexKey] != null) && ((minDist == null) || ce.compare(dist[vertexKey], minDist) < 0)) {
                    minDist = dist[vertexKey];
                    vOrig = vertex;
                }
            }
        }
    }


    public static <V, E> void shortestPathDijkstraWithSingleAutonomy(Graph<V, E> g, V vOrig,
                                                               Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                                               boolean[] visited, V[] pathKeys, E[] dist, E autonomy) {

        int vkey = g.key(vOrig);
        dist[vkey] = zero;
        pathKeys[vkey] = vOrig;

        while (vOrig != null) {
            vkey = g.key(vOrig);
            visited[vkey] = true;

            for (Edge<V, E> edge : g.outgoingEdges(vOrig)) {
                int vkeyAdj = g.key(edge.getVDest());
                if (!visited[vkeyAdj]) {
                    // Check if the car can reach the destination with the current autonomy

                    if (ce.compare(edge.getWeight(), autonomy) <= 0) {
                        E s = sum.apply(dist[vkey], edge.getWeight());
                        if (dist[vkeyAdj] == null || ce.compare(dist[vkeyAdj], s) > 0) {
                            dist[vkeyAdj] = s;
                            pathKeys[vkeyAdj] = vOrig;
                        }
                    }
                }
            }

            E minDist = null;
            vOrig = null;

            for (V vert : g.vertices()) {
                int i = g.key(vert);
                if (!visited[i] && (dist[i] != null) && ((minDist == null) || ce.compare(dist[i], minDist) < 0)) {
                    minDist = dist[i];
                    vOrig = vert;
                }
            }
        }
    }


    /**
     * Computes shortest-path distance from a source vertex to all reachable
     * vertices of a graph g with non-negative edge weights
     * This implementation uses Dijkstra's algorithm
     *
     * @param g     Graph instance
     * @param vOrig information of the Vertex origin
     * @return pathKeys minimum path vertices keys
     * @return dist minimum distances
     */
    public static <V, E> void shortestPathDijkstra(Graph<V, E> g, V vOrig,
                                                   Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                                   V[] pathKeys, E[] dist) {
        if (g.validVertex(vOrig)) {
            boolean[] visited = new boolean[g.numVertices()];
            shortestPathDijkstra(g, vOrig, ce, sum, zero, visited, pathKeys, dist);
        }
    }

    /**
     * Computes shortest-path distance from a source vertex to all reachable
     * vertices of a graph g with non-negative edge weights
     * This implementation uses Dijkstra's algorithm
     *
     * @param g     Graph instance
     * @param vOrig information of the Vertex origin
     * @return pathKeys minimum path vertices keys
     * @return dist minimum distances
     */
    public static <V, E> void shortestPathDijkstra(Graph<V, E> g, V vOrig,
                                                   Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                                   V[] pathKeys, E[] dist, int[] numPaths) {
        if (g.validVertex(vOrig)) {
            boolean[] visited = new boolean[g.numVertices()];
            shortestPathDijkstra(g, vOrig, ce, sum, zero, visited, pathKeys, dist);
        }

    }


    /**
     * Shortest-path between two vertices
     *
     * @param g         graph
     * @param vOrig     origin vertex
     * @param vDest     destination vertex
     * @param ce        comparator between elements of type E
     * @param sum       sum two elements of type E
     * @param zero      neutral element of the sum in elements of type E
     * @param shortPath returns the vertices which make the shortest path
     * @return if vertices exist in the graph and are connected, true, false otherwise
     */
    public static <V, E> E shortestPath(Graph<V, E> g, V vOrig, V vDest,
                                        Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                        LinkedList<V> shortPath) {

        if (!g.validVertex(vOrig) || !g.validVertex(vDest))
            return null;

        shortPath.clear();
        int numVerts = g.numVertices();
        boolean[] visited = new boolean[numVerts]; //default value: false
        @SuppressWarnings("unchecked")
        V[] pathKeys = (V[]) new Object[numVerts];
        @SuppressWarnings("unchecked")
        E[] dist = (E[]) new Object[numVerts];
        initializePathDist(numVerts, pathKeys, dist);

        shortestPathDijkstra(g, vOrig, ce, sum, zero, visited, pathKeys, dist);

        E lengthPath = dist[g.key(vDest)];

        if (lengthPath != null) {
            getPath(g, vOrig, vDest, pathKeys, shortPath);
            return lengthPath;
        }
        return null;
    }

    public static <V, E> E shortestPathWithSingleAutonomy(Graph<V, E> g, V vOrig, V vDest,
                                        Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                        LinkedList<V> shortPath, E autonomy) {

        if (!g.validVertex(vOrig) || !g.validVertex(vDest))
            return null;

        shortPath.clear();
        int numVerts = g.numVertices();
        boolean[] visited = new boolean[numVerts]; //default value: false
        @SuppressWarnings("unchecked")
        V[] pathKeys = (V[]) new Object[numVerts];
        @SuppressWarnings("unchecked")
        E[] dist = (E[]) new Object[numVerts];
        initializePathDist(numVerts, pathKeys, dist);

        shortestPathDijkstra(g, vOrig, ce, sum, zero, visited, pathKeys, dist);

        E lengthPath = dist[g.key(vDest)];

        if (lengthPath != null) {
            getPath(g, vOrig, vDest, pathKeys, shortPath);
            return lengthPath;
        }
        return null;
    }

    /**
     * Shortest-path between a vertex and all other vertices
     *
     * @param g     graph
     * @param vOrig start vertex
     * @param ce    comparator between elements of type E
     * @param sum   sum two elements of type E
     * @param zero  neutral element of the sum in elements of type E
     * @param paths returns all the minimum paths
     * @param dists returns the corresponding minimum distances
     * @return if vOrig exists in the graph true, false otherwise
     */
    public static <V, E> boolean shortestPaths(Graph<V, E> g, V vOrig,
                                               Comparator<E> ce, BinaryOperator<E> sum, E zero,
                                               ArrayList<LinkedList<V>> paths, ArrayList<E> dists) {

        if (!g.validVertex(vOrig)) return false;

        paths.clear();
        dists.clear();
        int numVerts = g.numVertices();
        boolean[] visited = new boolean[numVerts]; //default value: false
        @SuppressWarnings("unchecked")
        V[] pathKeys = (V[]) new Object[numVerts];
        @SuppressWarnings("unchecked")
        E[] dist = (E[]) new Object[numVerts];
        initializePathDist(numVerts, pathKeys, dist);

        shortestPathDijkstra(g, vOrig, ce, sum, zero, visited, pathKeys, dist);

        dists.clear();
        paths.clear();
        for (int i = 0; i < numVerts; i++) {
            paths.add(null);
            dists.add(null);
        }
        for (V vDst : g.vertices()) {
            int i = g.key(vDst);
            if (dist[i] != null) {
                LinkedList<V> shortPath = new LinkedList<>();
                getPath(g, vOrig, vDst, pathKeys, shortPath);
                paths.set(i, shortPath);
                dists.set(i, dist[i]);
            }
        }
        return true;
    }

    private static <V, E> void initializePathDist(int nVerts, V[] pathKeys, E[] dist) {
        for (int i = 0; i < nVerts; i++) {
            dist[i] = null;
            pathKeys[i] = null;
        }
    }

    /**
     * Extracts from pathKeys the minimum path between voInf and vdInf
     * The path is constructed from the end to the beginning
     *
     * @param g        Graph instance
     * @param vOrig    information of the Vertex origin
     * @param vDest    information of the Vertex destination
     * @param pathKeys minimum path vertices keys
     * @param path     stack with the minimum path (correct order)
     */
    public static <V, E> void getPath(Graph<V, E> g, V vOrig, V vDest,
                                      V[] pathKeys, LinkedList<V> path) {

        if (vOrig.equals(vDest))
            path.push(vOrig);
        else {
            path.push(vDest);
            int vKey = g.key(vDest);
            vDest = pathKeys[vKey];
            getPath(g, vOrig, vDest, pathKeys, path);
        }
    }

    public static LinkedList<Localidade> travellingSalesman(int n, String startLoc, double autonomy) throws FileNotFoundException {
        ImportData.importData();
        int indexHub;
        LinkedList<Localidade> circuito = new LinkedList<>();
        Comparator<Double> comparator = Double::compare;
        BinaryOperator<Double> sumOperator = Double::sum;

        MapGraph<Localidade, Double> graph = ImportData.getGraph();


        Localidade startingPoint = graph.vertex(p -> p.getIdLocalidade().equals(startLoc));
        Localidade previousHub = startingPoint;

        ArrayList<Localidade> hubs = ImportData.getNBiggestHubs(n);
        circuito.add(startingPoint);
        for (int i = 0; i < n; i++) {
            indexHub=-1;
            LinkedList<Localidade> shortestPath = new LinkedList<>();

            double shortest = 999999999;
            LinkedList<Localidade> shortPath = new LinkedList<>();

            for (int j = 0; j < hubs.size(); j++) {
                shortPath = new LinkedList<>();
                Double[] distances = new Double[graph.numVertices()];
                shortPath = shortestPathWithSingleAutonomy(graph, startingPoint, hubs.get(j),  autonomy, distances);

                if (pathLength(shortPath, graph) < shortest) {
                    indexHub=j;
                    shortest = pathLength(shortPath, graph);
                    shortestPath = new LinkedList<>(shortPath);
                }
            }

            startingPoint = hubs.get(indexHub);
            hubs.remove(indexHub);
            shortestPath.removeFirst();
            circuito.addAll(shortestPath);
        }
        LinkedList<Localidade> shortPath = new LinkedList<>();
        shortestPath(graph,startingPoint,graph.vertex(p -> p.getIdLocalidade().equals(startLoc)),comparator, sumOperator,0.0, shortPath);
        shortPath.removeFirst();
        circuito.addAll(shortPath);

        return circuito;
    }

    public static double pathLength(LinkedList<Localidade> path, MapGraph<Localidade, Double> graph){
        double total=0;
        for (int i = 0; i < path.size()-1; i++) {
            total += Double.parseDouble(String.valueOf(graph.edge(path.get(i),path.get(i+1)).getWeight()));
        }

        return total;
    }

    public static LinkedList<Localidade> shortestPathWithAutonomy(MapGraph<Localidade, Double> graph, Localidade pontoPartida, Localidade hub, double autonomia, Double[] distances) {
        Comparator<Double> comparator = Double::compare;
        BinaryOperator<Double> sumOperator = Double::sum;
        boolean[] visited = new boolean[graph.numVertices()];
        Localidade[] pathKeys = new Localidade[graph.numVertices()];


        Algorithms.shortestPathDijkstraWithAutonomy(graph, pontoPartida, comparator, sumOperator, 0.0, visited, pathKeys, distances, autonomia);

        LinkedList<Localidade> path = new LinkedList<>();
        Algorithms.getPath(graph, pontoPartida, hub, pathKeys, path);

        return path;
    }

    public static LinkedList<Localidade> shortestPathWithSingleAutonomy(MapGraph<Localidade, Double> graph, Localidade pontoPartida, Localidade hub, double autonomia, Double[] distances) {
        Comparator<Double> comparator = Double::compare;
        BinaryOperator<Double> sumOperator = Double::sum;
        boolean[] visited = new boolean[graph.numVertices()];
        Localidade[] pathKeys = new Localidade[graph.numVertices()];


        Algorithms.shortestPathDijkstraWithSingleAutonomy(graph, pontoPartida, comparator, sumOperator, 0.0, visited, pathKeys, distances, autonomia);

        LinkedList<Localidade> path = new LinkedList<>();
        Algorithms.getPath(graph, pontoPartida, hub, pathKeys, path);

        return path;
    }

    public static void kruskal(int V, List<Edge<Localidade, Double>> graph, List<Edge<Localidade, Double>> results) {
        int noOfEdges = 0;
        int j = 0;
        int[][] subset = new int[V + 1][2];

        for (int i = 0; i <= V; i++) {
            subset[i][0] = i;
            subset[i][1] = 0;
        }

        while (noOfEdges < V) {
            if (j < graph.size()) {
                Edge<Localidade, Double> nextEdge = graph.get(j);
                int orig = Integer.parseInt(nextEdge.getVOrig().getIdLocalidade().substring(nextEdge.getVOrig().getIdLocalidade().indexOf("T") + 1)) - 1;
                int dest = Integer.parseInt(nextEdge.getVDest().getIdLocalidade().substring(nextEdge.getVDest().getIdLocalidade().indexOf("T") + 1)) - 1;

                int x = findRoot(subset, orig);
                int y = findRoot(subset, dest);

                if (x != y) {
                    results.add(noOfEdges, nextEdge);
                    union(subset, x, y);
                    noOfEdges++;
                }

                j++;
            } else {
                break;
            }

        }
    }

    private static void union(int[][] subsets, int x, int y) {
        int rootX = findRoot(subsets, x);
        int rootY = findRoot(subsets, y);

        if (subsets[rootY][1] < subsets[rootX][1]) {
            subsets[rootY][0] = rootX;
        } else if (subsets[rootX][1] < subsets[rootY][1]) {
            subsets[rootX][0] = rootY;
        } else {
            subsets[rootY][0] = rootX;
            subsets[rootX][1]++;
        }
    }

    private static int findRoot(int[][] subsets, int i) {
        if (subsets[i][0] == i)
            return subsets[i][0];

        subsets[i][0] = findRoot(subsets, subsets[i][0]);
        return subsets[i][0];
    }

    private static final Comparator<Edge<Localidade, Double>> edgeComparator = new Comparator<Edge<Localidade, Double>>() {
        @Override
        public int compare(Edge<Localidade, Double> e1, Edge<Localidade, Double> e2) {
            return Double.compare(e1.getWeight(), e2.getWeight());
        }
    };

    public static List<Edge<Localidade, Double>> shortestPathBetweenAll(MapGraph<Localidade, Double> graph) {
        int vertices = graph.numVerts - 1;
        List<Edge<Localidade, Double>> edges = new ArrayList<>(graph.edges().stream().toList());
        List<Edge<Localidade, Double>> results = new ArrayList<>();

        edges.sort(edgeComparator);

        kruskal(vertices, edges, results);

        return results;
    }

    public Path getLongestTrip(MapGraph<Localidade, Double> graph) {
        double maxDistance = 0;
        LinkedList<Localidade> longestPath = new LinkedList<>();

        Comparator<Double> comparator = Double::compare;
        BinaryOperator<Double> sumOperator = Double::sum;
        ArrayList<LinkedList<Localidade>> paths = new ArrayList<>();
        ArrayList<Double> distances = new ArrayList<>();


        for (int i = 0; i < graph.numVertices(); i++) {
            boolean result = shortestPaths(graph, graph.vertices.get(i), comparator, sumOperator, 0.0, paths, distances);
            if (result) {
                for (int j = 0; j < distances.size(); j++) {
                    if (maxDistance < distances.get(j)) {
                        maxDistance = distances.get(j);
                        longestPath = paths.get(j);
                    }
                }
            }
        }

        return new Path(longestPath, maxDistance);
    }

    public String checkAutonomy(MapGraph<Localidade, Double> graph, double autonomia, Path path) {
        StringBuilder output = new StringBuilder();
        int count = 0;
        boolean impossible = false;
        double deposito = autonomia;
        Localidade vOrigem = path.getPathStops().getFirst();
        Localidade vDestino;

        for (int i = 1; i < path.getPathStops().size(); i++) {
            vDestino = path.getPathStops().get(i);
            if (graph.edge(vOrigem, vDestino).getWeight() > autonomia) {
                output.delete(0, output.length());
                output.append("É impossivel realizar esta viagem, visto que a autonomia não alcança a distância entre dois pontos de paragem, " +
                        "para cumprir a viagem com menor percurso possível:\n" + vOrigem + " -> " + vDestino + " = " + graph.edge(vOrigem, vDestino).getWeight() + "m\n"
                        + "Autonomia: " + autonomia + "m");
                impossible = true;
                break;
            } else {
                deposito = deposito - graph.edge(vOrigem, vDestino).getWeight();

                if (deposito < 0 && output.isEmpty()) {
                    output.append(vOrigem.getIdLocalidade());
                    deposito = autonomia - graph.edge(vOrigem, vDestino).getWeight();
                    count++;
                } else if (deposito < 0) {
                    output.append(", " + vOrigem.getIdLocalidade());
                    deposito = autonomia - graph.edge(vOrigem, vDestino).getWeight();
                    count++;
                } else if (deposito == 0 && output.isEmpty()) {
                    output.append(vDestino.getIdLocalidade());
                    deposito = autonomia;
                    count++;
                } else if (deposito == 0) {
                    output.append(", " + vDestino.getIdLocalidade());
                    deposito = autonomia;
                    count++;
                }
                vOrigem = vDestino;
            }
        }
        if (!impossible) {
            output.append("\nNúmero de Paragens: " + count);
        }
        return output.toString();
    }

    private final Comparator<String> ordernarPorCriterios = new Comparator<String>() {
        @Override
        public int compare(String l1, String l2) {
            double valsL1[] = new double[3];
            double valsL2[] = new double[3];
            Pattern p = Pattern.compile("-?\\d+(\\.\\d+)?");
            Matcher m = p.matcher(l1.substring(l1.indexOf('|')));
            int i = 0;
            while (m.find())
                valsL1[i++] = Double.parseDouble(m.group());
            m = p.matcher(l2.substring(l2.indexOf('|')));
            i = 0;
            while (m.find())
                valsL2[i++] = Double.parseDouble(m.group());
            if (valsL1[2] != valsL2[2])
                return Double.compare(valsL2[2], valsL1[2]);
            else if (valsL1[1] != valsL2[1])
                return Double.compare(valsL2[0], valsL1[0]);
            else
                return Double.compare(valsL1[1], valsL2[1]);
        }
    };

    public List<String> ordenarLocalidades(MapGraph<Localidade, Double> graph) {
        List<String> ret = new ArrayList<>();
        Map<Localidade, Integer> betMap = new HashMap<>();
        Map<Localidade, Double> closMap = new HashMap<>();

        List<Localidade> helper = graph.vertices();
        for (Localidade l : helper) {
            betMap.put(l, 0);
        }

        Comparator<Double> cmp = Double::compare;
        BinaryOperator<Double> sum = Double::sum;
        ArrayList<LinkedList<Localidade>> paths = new ArrayList<>();
        ArrayList<Double> dst = new ArrayList<>();

        Localidade local;
        boolean res;
        int betCrit;
        Double closCrit;

        for (int i = 0; i < graph.numVertices(); i++) {
            local = graph.vertices.get(i);
            closCrit = 0.0;

            res = shortestPaths(graph, local, cmp, sum, 0.0, paths, dst);

            if (res) {
                for (Double d : dst) {
                    if (d == null)
                        break;
                    closCrit += d;
                }
                closMap.put(local, closCrit);

                for (LinkedList<Localidade> l : paths) {
                    if (l == null)
                        break;
                    else if (l.size() <= 2)
                        continue;

                    for (Localidade lc : l) {
                        if (lc.equals(l.getFirst()) || lc.equals(l.getLast()))
                            continue;

                        betCrit = betMap.get(lc);
                        betMap.put(lc, betCrit + 1);
                    }
                }
            }
        }

        String horario;
        int ilc;
        for (Localidade l : betMap.keySet()) {
            ilc = Integer.parseInt(l.getIdLocalidade().substring(2));
            if (ilc <= 105)
                horario = "9h:00 - 14h:00";
            else if (ilc <= 215)
                horario = "11h:00 - 16h:00";
            else
                horario = "12h:00 - 17h:00";

            ret.add(String.format("Localidade: %s, horario: %s | Criterios: influencia: %d, proximidade: %.0f, centralidade: %d.",
                    l.getIdLocalidade(), horario, graph.outDegree(l), closMap.get(l), betMap.get(l)));
        }
        ret.sort(ordernarPorCriterios);
        return ret;
    }


    public List<String> limitarHubs(List<String> hubs, int numHubs) {

        return hubs.subList(0, numHubs);


    }

    public boolean checkEquals(Map<List<Localidade>, Double> values, List<Localidade> l2){
        for (List<Localidade> l1 : values.keySet()) {
            if(l1.equals(l2) || l1.get(0).getIdLocalidade().equals(l2.get(0).getIdLocalidade()) && l1.get(1).getIdLocalidade().equals(l2.get(1).getIdLocalidade()) || l1.get(0).getIdLocalidade().equals(l2.get(1).getIdLocalidade()) && l1.get(1).getIdLocalidade().equals(l2.get(0).getIdLocalidade())){
                return true;
            }
        }
        return false;
    }
    public Map<Localidade, List<Localidade>> gervanNewman(MapGraph<Localidade, Double> graph){
        Map<Localidade, List<Localidade>> HubClusters = new HashMap<>();

        MapGraph<Localidade, Double> graph2 = new MapGraph<>(false);
        graph2.copy(graph, graph2);

        for (Edge<Localidade, Double> edge : graph.edges()) {
            if(edge.getVOrig().getIsHub()) HubClusters.put(edge.getVOrig(), new ArrayList<>());
        }

        List<Map<List<Localidade>, Double>> totalCalc = new ArrayList<>(HubClusters.size());

        int i = 0;
        for (Localidade hub : HubClusters.keySet()) {
            graph2.copy(graph, graph2);

            i++;

            for (Localidade hub2 : HubClusters.keySet()) {
                for (Edge<Localidade, Double> edge : graph2.outgoingEdges(hub2)) {
                    if(!hub2.equals(hub) && edge.getVOrig().getIsHub()) graph2.removeEdge(hub2, edge.getVDest());
                }
            }

            Map<List<Localidade>, Double> verticeCalc = new HashMap<>();
            for (Localidade vertice : graph2.vertices) {
                verticeCalc = BreadthFirstSearchWithBetweeness(graph2, vertice);
                for (List<Localidade> local : verticeCalc.keySet()) {
                    if (totalCalc.size() == 0 || totalCalc.size() < i){
                        totalCalc.add(verticeCalc);
                    }else if(!checkEquals(totalCalc.get(i-1), local)){
                        totalCalc.get(i-1).put(local, verticeCalc.get(local));
                    }else {
                        if(totalCalc.get(i-1).get(local) == null && !local.get(0).getIdLocalidade().equals(local.get(1).getIdLocalidade())){
                            List<Localidade> a = new ArrayList<>();
                            a.add(local.get(1));
                            a.add(local.get(0));
                            totalCalc.get(i-1).replace(local, totalCalc.get(i-1).get(a) + verticeCalc.get(local));
                        }
                        else totalCalc.get(i-1).replace(local, totalCalc.get(i-1).get(local) + verticeCalc.get(local));
                    }
                }
            }
        }

        i = 0;
        double lowest = 0;
        Comparator<Double> comparator = Double::compare;
        BinaryOperator<Double> sumOperator = Double::sum;
        LinkedList<Localidade> path = new LinkedList<>();
        List<Double> lowestHub = new ArrayList<>();
        List<Localidade> chosenHub = new ArrayList<>();
        List<Localidade> help = new ArrayList<>();
        for (Localidade hub : HubClusters.keySet()) {
            chosenHub.add(hub);
            lowestHub.add(999999999.9);
            help.add(hub);
        }

        for (int j = 0; j < graph2.numVerts; j++){
            i = 0;
            for (Localidade hub : HubClusters.keySet()) {
                chosenHub.set(i, hub);
                lowestHub.set(i, 999999999.9);
                help.set(i, hub);
                i++;
            }
            i=0;
            for (Localidade hub : HubClusters.keySet()) {
                graph2.copy(graph, graph2);

                i++;

                List<Edge<Localidade, Double>> edges = new ArrayList<>();

                for (List<Localidade> node : totalCalc.get(i-1).keySet()) {
                        if(!edges.contains(graph2.edge(node.get(0), node.get(1))) || !edges.contains(graph2.edge(node.get(1), node.get(0)))){
                            if((graph2.edge(node.get(0), node.get(1)) != null)){
                                edges.add(graph2.edge(node.get(0), node.get(1)));
                            } else if((graph2.edge(node.get(1), node.get(0)) != null)){
                                edges.add(graph2.edge(node.get(1), node.get(0)));
                            }
                        }
                }

                boolean deleteEdge;
                for (Edge<Localidade, Double> edge : graph2.edges()) {
                    deleteEdge = true;
                    for (Edge<Localidade, Double> edge2 : edges) {
                        if(edge2.getVOrig().equals(edge.getVOrig()) && edge2.getVDest().equals(edge.getVDest()) || edge2.getVOrig().equals(edge.getVDest()) && edge2.getVDest().equals(edge.getVOrig())) {
                            deleteEdge = false;
                            break;
                        }
                    }
                    if(deleteEdge) graph2.removeEdge(edge.getVOrig(), edge.getVDest());
                }

                for (Localidade hub2 : HubClusters.keySet()) {
                    for (Edge<Localidade, Double> edge : graph2.outgoingEdges(hub2)) {
                        if(!hub2.equals(hub) && edge.getVOrig().getIsHub()) graph2.removeEdge(hub2, edge.getVDest());
                    }
                }
                for (List<Localidade> node : totalCalc.get(i-1).keySet()) {
                    boolean b = true;
                    for (Localidade local : HubClusters.get(hub)) {
                        if(local.getIdLocalidade().equals(node.get(0).getIdLocalidade()) || local.getIdLocalidade().equals(node.get(1).getIdLocalidade())) b = false;
                    }
                    double downBad = 0;
                    shortestPath(graph2, hub, node.get(0), comparator, sumOperator, 0.0, path);
                    if(!path.isEmpty() && b){
                        for(int k = 0; k < path.size()-1; k++){
                            List<Localidade> connection = new ArrayList<>();
                            connection.add(0, path.get(k));
                            connection.add(1, path.get(++k));
                            if(totalCalc.get(i-1).get(connection) == null && !connection.get(0).getIdLocalidade().equals(connection.get(1).getIdLocalidade())){
                                List<Localidade> a = new ArrayList<>();
                                a.add(connection.get(1));
                                a.add(connection.get(0));
                                downBad += totalCalc.get(i-1).get(a);
                            }
                            else {
                                downBad += totalCalc.get(i-1).get(connection);
                            }

                        }
                        if(lowestHub.get(i-1) > downBad && downBad != 0){
                            lowestHub.set(i-1, downBad);
                            chosenHub.set(i-1, hub);
                            help.set(i-1, node.get(0));
                        }
                    }
                }
            }

            int n = 0;
            for (Double low : lowestHub) {
                if(low < lowestHub.get(n)) n = lowestHub.indexOf(low);
            }
            if(!HubClusters.get(chosenHub.get(n)).contains(help.get(n))) HubClusters.get(chosenHub.get(n)).add(help.get(n));
        }

        return HubClusters;
    }

    public Map<LinkedList<Localidade>, double[]> getAllAutonomousPaths(MapGraph<Localidade, Double> graph, Localidade origin,
                                                                       Localidade destination, double autonomy, double averageSpeed){
        List<LinkedList<Localidade>> paths = allPaths(graph, origin, destination);
        List<Edge<Localidade, Double>> edges = graph.edges().stream().toList();

        Map<LinkedList<Localidade>, double[]> pathInfo = new HashMap<>();
        for(LinkedList<Localidade> a : paths) {
            double total = 0;
            double timeTaken = 0;
            Localidade previousLocation;
            for (int i = 1; i < a.size(); i++) {
                previousLocation = a.get(i-1);
                for(int j = 0; j < edges.size(); j++){
                    if(edges.get(j).getVOrig().equals(previousLocation) && edges.get(j).getVDest().equals(a.get(i))){
                        timeTaken += edges.get(j).getWeight()/1000/averageSpeed;
                        total += edges.get(j).getWeight()/1000;
                    }
                }
                if(a.get(i).getIsHub() && !a.get(i).getIdLocalidade().startsWith("[")) a.get(i).setIdLocalidade("[HUB] " + a.get(i).getIdLocalidade());
            }
            if(total < autonomy){
                double[] b = {total, timeTaken};
                pathInfo.put(a, b);
            }
            total = 0;
            timeTaken = 0;
        }

        return pathInfo;
    }
}
