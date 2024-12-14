class Graph {
  Map<String, List<String>> adjList = {};

  void addVertex(String vertex) {
    if (!adjList.containsKey(vertex)) {
      adjList[vertex] = [];
    }
  }

  void addEdge(String v1, String v2) {
    if (!adjList.containsKey(v1)) addVertex(v1);
    if (!adjList.containsKey(v2)) addVertex(v2);

    adjList[v1]!.add(v2);
    adjList[v2]!.add(v1);
  }

  void dfs(String start) {
    Set<String> visited = {};
    List<String> stack = [];

    stack.add(start);

    while (stack.isNotEmpty) {
      String vertex = stack.removeLast();

      if (!visited.contains(vertex)) {
        visited.add(vertex);
        print(vertex);
      }

      for (String next in adjList[vertex]!) {
        if (!visited.contains(next)) {
          stack.add(next);
        }
      }
    }
  }
}

void main() {
  var g = Graph();

  g.addVertex('A');
  g.addVertex('B');
  g.addVertex('C');
  g.addVertex('D');
  g.addVertex('E');

  g.addEdge('A', 'B');
  g.addEdge('A', 'C');
  g.addEdge('B', 'D');
  g.addEdge('B', 'E');
  g.addEdge('C', 'D');

  print('DFS Iterative traversal:');
  g.dfs('A');
}
