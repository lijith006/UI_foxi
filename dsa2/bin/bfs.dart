// import 'dart:collection';

// class Graph {
//   Map<String, List<String>> adjList = {};
//   void addVertex(String vertex) {
//     if (!adjList.containsKey(vertex)) {
//       adjList[vertex] = [];
//     }
//   }

//   void addEdges(String v1, String v2) {
//     if (!adjList.containsKey(v1)) addVertex(v1);
//     if (!adjList.containsKey(v2)) addVertex(v2);
//     adjList[v1]!.add(v2);
//     adjList[v2]!.add(v1);
//   }

//   void bfs(String start) {
//     Set<String> visited = {};
//     Queue<String> queue = Queue();
//     queue.add(start);

//     while (queue.isNotEmpty) {
//       String vertex = queue.removeFirst();
//       print(vertex);
//       for (String neighbor in adjList[vertex]!) {
//         if (!visited.contains(neighbor)) {
//           queue.add(neighbor);
//         }
//       }
//     }
//   }
// }

// void main() {
//   Graph g = Graph();
//   g.addVertex('A');
//   g.addVertex('B');
//   g.addVertex('C');
//   g.addVertex('D');
//   g.addVertex('E');

//   g.addEdges('A', 'B');
//   g.addEdges('A', 'C');
//   g.addEdges('B', 'D');
//   g.bfs('A');
// }

//DFS

class Graph {
  Map<String, List<String>> adjList = {};
  void addVertex(String vertex) {
    if (!adjList.containsKey(vertex)) {
      adjList[vertex] = [];
    }
  }

  void addEdges(String v1, String v2) {
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

      for (String neighbor in adjList[vertex]!) {
        if (!visited.contains(neighbor)) {
          stack.add(neighbor);
        }
      }
    }
  }
}

void main() {
  Graph g = Graph();
  g.addVertex('A');
  g.addVertex('B');
  g.addVertex('C');
  g.addVertex('D');

  g.addEdges('A', 'B');
  g.addEdges('A', 'C');
  g.addEdges('B', 'D');
  g.dfs('A');
}
