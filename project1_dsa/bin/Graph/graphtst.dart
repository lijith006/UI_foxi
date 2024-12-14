import 'dart:collection';

class Graph {
  Map<String, List<String>> adjList = {};
  void addVertices(String vertex) {
    if (!adjList.containsKey(vertex)) {
      adjList[vertex] = [];
    }
  }

  void addEdges(String v1, String v2) {
    if (!adjList.containsKey(v1)) addVertices(v1);
    if (!adjList.containsKey(v2)) addVertices(v2);
    adjList[v1]!.add(v2);
    adjList[v2]!.add(v1);
  }

  void bfs(String start) {
    Set<String> visited = {};
    Queue<String> queue = Queue();
    queue.add(start);

    while (queue.isNotEmpty) {
      String vertex = queue.removeFirst();
      if (!visited.contains(vertex)) {
        visited.add(vertex);
        print(vertex);
      }

      for (String next in adjList[vertex]!) {
        if (!visited.contains(next)) {
          queue.add(next);
        }
      }
    }
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
  Graph g = Graph();
  g.addVertices('A');
  g.addVertices('B');

  g.addVertices('C');

  g.addVertices('D');

  g.addVertices('E');
  g.addEdges('A', 'B');
  g.addEdges('A', 'C');
  g.addEdges('B', 'D');
  g.addEdges('C', 'D');
  g.addEdges('D', 'E');
  print('bfs :');
  g.bfs('A');
  print('dfs : ');
  g.dfs('A');
}
