// import 'dart:collection';

// class Graph {
//   // Map to store adjacency list
//   Map<String, List<String>> adjList = {};

//   // Add a vertex to the graph
//   void addVertex(String vertex) {
//     if (!adjList.containsKey(vertex)) {
//       adjList[vertex] = [];
//     }
//   }

//   // Add edges between two vertices
//   void addEdges(String v1, String v2) {
//     if (!adjList.containsKey(v1)) addVertex(v1);
//     if (!adjList.containsKey(v2)) addVertex(v2);

//     adjList[v1]!.add(v2);
//     adjList[v2]!.add(v1);
//   }

//   // Perform BFS traversal
//   void bfs(String start) {
//     Set<String> visited = {};
//     Queue<String> queue = Queue();

//     queue.add(start);

//     while (queue.isNotEmpty) {
//       String vertex = queue.removeFirst();

//       if (!visited.contains(vertex)) {
//         visited.add(vertex);
//         print(vertex);

//         for (String neighbor in adjList[vertex]!) {
//           if (!visited.contains(neighbor)) {
//             queue.add(neighbor);
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

//   g.addEdges('A', 'B');
//   g.addEdges('A', 'C');
//   g.addEdges('B', 'D');

//   g.bfs('A');
// }
//****************************************DFS******************************* */

// //DFS
// class Graph {
//   // Map to store adjacency list
//   Map<String, List<String>> adjList = {};

//   // Add a vertex to the graph
//   void addVertex(String vertex) {
//     if (!adjList.containsKey(vertex)) {
//       adjList[vertex] = [];
//     }
//   }

//   // Add edges between two vertices
//   void addEdges(String v1, String v2) {
//     if (!adjList.containsKey(v1)) addVertex(v1);
//     if (!adjList.containsKey(v2)) addVertex(v2);

//     adjList[v1]!.add(v2);
//     adjList[v2]!.add(v1);
//   }

//   // Non-recursive DFS traversal using a stack
//   void dfs(String startVertex) {
//     Set<String> visited = {};
//     List<String> stack = [];

//     // Start with the initial vertex
//     stack.add(startVertex);

//     while (stack.isNotEmpty) {
//       String vertex = stack.removeLast();

//       if (!visited.contains(vertex)) {
//         visited.add(vertex);
//         print(vertex);

//         // Add neighbors to the stack
//         for (String neighbor in adjList[vertex]!) {
//           if (!visited.contains(neighbor)) {
//             stack.add(neighbor);
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
//   g.addVertex('E');

//   g.addEdges('A', 'B');
//   g.addEdges('A', 'C');
//   g.addEdges('B', 'D');
//   g.addEdges('B', 'E');
//   g.addEdges('C', 'D');

//   print('DFS traversal (non-recursive):');
//   g.dfs('A');
// }


//********************************************************************************************
// */