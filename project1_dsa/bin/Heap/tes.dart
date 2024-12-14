// // import 'dart:collection';

// // class Graph {
// //   Map<String, List<String>> adjList = {};
// //   void addVertex(String vertex) {
// //     if (!adjList.containsKey(vertex)) {
// //       adjList[vertex] = [];
// //     }
// //   }

// //   void addEdge(String v1, String v2) {
// //     if (!adjList.containsKey(v1)) addVertex(v1);
// //     if (!adjList.containsKey(v2)) addVertex(v2);
// //     adjList[v1]!.add(v2);
// //     adjList[v2]!.add(v1);
// //   }

// //   void bfs(String start) {
// //     Set<String> visited = {};
// //     Queue<String> queue = Queue<String>();
// //     queue.add(start);

// //     while (queue.isNotEmpty) {
// //       String vertex = queue.removeFirst();

// //       if (!visited.contains(vertex)) {
// //         visited.add(vertex);
// //         print(vertex);
// //       }

// //       for (String next in adjList[vertex]!) {
// //         if (!visited.contains(next)) {
// //           queue.add(next);
// //         }
// //       }
// //     }
// //   }
// // }

// // void main() {
// //   Graph g = Graph();
// //   g.addVertex('A');
// //   g.addVertex('B');
// //   g.addVertex('C');
// //   g.addVertex('D');

// //   g.addEdge('A', 'B');
// //   g.addEdge('A', 'C');
// //   g.addEdge('A', 'D');
// //   g.addEdge('B', 'E');

// //   g.bfs('A');
// // }

// // class Graph {
// //   Map<String, List<String>> adjList = {};
// //   void addVertex(String vertex) {
// //     if (!adjList.containsKey(vertex)) {
// //       adjList[vertex] = [];
// //     }
// //   }

// //   void addEdge(String v1, String v2) {
// //     if (!adjList.containsKey(v1)) addVertex(v1);
// //     if (!adjList.containsKey(v2)) addVertex(v2);
// //     adjList[v1]!.add(v2);
// //     adjList[v2]!.add(v1);
// //   }

// //   void dfs(String start) {
// //     Set<String> visited = {};
// //     List<String> stack = [];
// //     stack.add(start);

// //     while (stack.isNotEmpty) {
// //       String vertex = stack.removeLast();

// //       if (!visited.contains(vertex)) {
// //         visited.add(vertex);
// //         print(vertex);
// //       }

// //       for (String next in adjList[vertex]!) {
// //         if (!visited.contains(next)) {
// //           stack.add(next);
// //         }
// //       }
// //     }
// //   }
// // }

// // void main() {
// //   Graph g = Graph();
// //   g.addVertex('A');
// //   g.addVertex('B');
// //   g.addVertex('C');
// //   g.addVertex('D');

// //   g.addEdge('A', 'B');
// //   g.addEdge('A', 'C');
// //   g.addEdge('A', 'D');
// //   g.addEdge('B', 'E');
// //   g.dfs('A');
// // }

// import 'dart:ffi';

// class TreeNode {
//   int value;
//   TreeNode? left;
//   TreeNode? right;
//   TreeNode(this.value, [this.left, this.right]);
// }

// class BinarySearchTree {
//   TreeNode? root;
//   void insert(int value) {
//     final newNode = TreeNode(value);
//     if (root == null) {
//       root = newNode;
//     } else {
//       insertNode(newNode, root!);
//     }
//   }

//   void insertNode(TreeNode newNode, TreeNode root) {
//     if (newNode.value < root.value) {
//       if (root.left == null) {
//         root.left = newNode;
//       } else {
//         insertNode(newNode, root.left!);
//       }
//     } else {
//       if (newNode.value < root.value) {
//         if (root.right == null) {
//           root.right = newNode;
//         } else {
//           insertNode(newNode, root.right!);
//         }
//       }
//     }
//   }

//   bool search(int target, TreeNode? root) {
//     if (root == null) return false;
//     if (target == root.value) return true;
//     if (target < root.value) {
//       return search(target, root.left!);
//     } else {
//       return search(target, root.right!);
//     }
//   }

//   bool isBST(TreeNode? root, [int min = -2147483648, int max = 2147483648]) {
//     if (root == null) return true;
//     if (root.value <= min || root.value >= max) return false;
//     return isBST(root.left, min, root.value) &&
//         isBST(root.right, root.value, max);
//   }

//   List<int> inOrderTraversal(TreeNode? root, [List<int>? result]) {
//     result ??= [];
//     if (root != null) {
//       inOrderTraversal(root.left!, result);
//       result.add(root.value);
//       inOrderTraversal(root.right, result);
//     }
//   }

//   void printall() {
//     final result = inOrderTraversal(root);
//     print(result);
//   }

//   TreeNode findMin(TreeNode root) {
//     while (root.left != null) {
//       root = root.left!;
//     }
//     return root;
//   }

//   TreeNode findMax(TreeNode root) {
//     while (root.right != null) {
//       root = root.right!;
//     }
//     return root;
//   }

// //   TreeNode? deleteNode(TreeNode? root, int target) {
// //     if (root == null) return null;
// //     if (target < root.value) {
// //       return deleteNode(root.left!, target);
// //     } else if (target > root.value) {
// //       return deleteNode(root.right, target);
// //     } else {
// //       if (root.left == null) return root.right;
// //       if (root.right == null) return root.right;
// //       TreeNode min = findMin(root);
// //       root.value = min.value;
// //       root.right = deleteNode(root.right, target);
// //     }
// //     return root;
// //   }
// // }
