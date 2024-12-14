class Graph {
  List<List<int>> adjMatrix;
  int size;

  //Constructor
  Graph(int size)
      : size = size,
        adjMatrix = List.generate(size, (_) => List.filled(size, 0));

  //add edge b/w two vertices

  void addEdge(int i, int j) {
    adjMatrix[i][j] = 1;
    adjMatrix[i][j] = 1;
  }

  //
  void display() {
    for (var row in adjMatrix) {
      print(row);
    }
  }
}

void main() {
  Graph g = Graph(5);
  g.addEdge(0, 1);
  g.addEdge(0, 2);
  g.addEdge(1, 2);
  g.addEdge(1, 3);

  g.display();
}
