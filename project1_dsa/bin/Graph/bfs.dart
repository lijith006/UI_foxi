// import 'dart:collection';

// class Graph {
//   //Map to store the adj list
//   Map<String, List<String>> adjList = {};

//   //add vertex

//   void addVertex(String vertex) {
//     if (!adjList.containsKey(vertex)) {
//       adjList[vertex] = [];
//     }
//   }

// //add edge b/w vertices
//   void addEdge(String v1, String v2) {
//     if (!adjList.containsKey(v1)) addVertex(v1);
//     if (!adjList.containsKey(v2)) addVertex(v2);

//     adjList[v1]!.add(v2);
//     adjList[v2]!.add(v1);
//   }

//   //BFS

//   void bfs(String start) {
//     Set<String> visited = {};
//     Queue<String> queue = Queue<String>();
//     queue.add(start);

//     while (queue.isNotEmpty) {
//       String vertex = queue.removeFirst();

//       if (!visited.contains(vertex)) {
//         visited.add(vertex);
//         print(vertex);

//         for (String next in adjList[vertex]!) {
//           if (!visited.contains(next)) {
//             queue.add(next);
//           }
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

//   g.addEdge('A', 'B');
//   g.addEdge('A', 'C');
//   g.addEdge('B', 'D');
//   g.bfs('A');
// }

import 'dart:collection';

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

  void bfs(String start) {
    Set<String> visited = {};
    Queue<String> queue = Queue<String>();
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

  print('BFS Iterative traversal:');
  g.bfs('A');
}
