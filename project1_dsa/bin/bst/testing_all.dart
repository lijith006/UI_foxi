// //Heap
//--------------------------------
// import 'dart:collection';

// class MaxHeap {
//   List<int> heap = [];

//   int getparentsChildIndex(int index) {
//     return (index - 1) ~/ 2;
//   }

//   int getLeftChildIndex(int index) {
//     return 2 * index + 1;
//   }

//   int getRightChildIndex(int index) {
//     return 2 * index + 2;
//   }

//   void insert(int value) {
//     heap.add(value);
//     heapifyUp();
//   }

//   void swap(int index1, int index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   void heapifyUp() {
//     int index = heap.length - 1;
//     while (index > 0) {
//       int parent = getparentsChildIndex(index);

//       if (heap[index] > heap[parent]) {
//         swap(index, parent);
//         index = parent;
//       }
//       break;
//     }
//   }

//   int? remove() {
//     if (heap.isEmpty) return null;
//     int max = heap[0];
//     int end = heap.removeLast();
//     if (heap.isNotEmpty) {
//       heap[0] = end;
//       heapifyDown();
//     }
//     return max;
//   }

//   void heapifyDown() {
//     int index = 0;
//     int length = heap.length;
//     int newRoot = heap[0];

//     while (true) {
//       int leftChildIndex = getLeftChildIndex(index);
//       int rightChildIndex = getRightChildIndex(index);
//       int? leftChild, rightChild;
//       int? swap;

//       if (leftChildIndex < length) {
//         leftChild = heap[leftChildIndex];
//         if (leftChild > newRoot) {
//           swap = leftChildIndex;
//         }
//       }
//       if (rightChildIndex < length) {
//         rightChild = heap[rightChildIndex];
//         if ((swap == null && rightChild > newRoot) ||
//             (swap != null && rightChild > heap[swap])) {
//           swap = rightChildIndex;
//         }
//       }
//       if (swap == null) break;
//       heap[index] = heap[swap];
//       heap[swap] = newRoot;
//       index = swap;
//     }
//   }
// }

// void main() {
//   MaxHeap heap = MaxHeap();
//   heap.insert(50);
//   heap.insert(20);
//   heap.insert(5);
//   heap.insert(10);
//   heap.insert(69);
//   heap.insert(90);
//   print(heap.heap);
//   print(heap.remove());
//   print(heap.heap);
// }
//************************************************************************************************************************************ */
//Graph
//BFS
//-----------------

// import 'dart:collection';

// class Graph {
//   Map<String, List<String>> adjList = {};
//   void addvertex(String vertex) {
//     if (!adjList.containsKey(vertex)) {
//       adjList[vertex] = [];
//     }
//   }

//   void addEdges(String v1, String v2) {
//     if (!adjList.containsKey(v1)) addvertex(v1);
//     if (!adjList.containsKey(v2)) addvertex(v2);
//     adjList[v1]!.add(v2);
//     adjList[v2]!.add(v1);
//   }

//   void bfs(String start) {
//     Set<String> visited = {};
//     Queue<String> queue = Queue();
//     queue.add(start);

//     while (queue.isNotEmpty) {
//       String vertex = queue.removeFirst();
//       if (!visited.contains(vertex)) {
//         visited.add(vertex);
//         print(vertex);
//       }
//       for (String next in adjList[vertex]!) {
//         if (!visited.contains(next)) {
//           queue.add(next);
//         }
//       }
//     }
//   }

//   void dfs(String start) {
//     Set<String> visited = {};
//     List<String> stack = [];

//     stack.add(start);

//     while (stack.isNotEmpty) {
//       String vertex = stack.removeLast();
//       if (!visited.contains(vertex)) {
//         visited.add(vertex);
//         print(vertex);
//       }
//       for (String next in adjList[vertex]!) {
//         if (!visited.contains(next)) {
//           stack.add(next);
//         }
//       }
//     }
//   }
// }

// void main() {
//   Graph g = Graph();
//   g.addvertex('A');
//   g.addvertex('B');
//   g.addvertex('C');
//   g.addvertex('D');
//   g.addvertex('E');
//   g.addvertex('F');
//   g.addEdges('A', 'B');
//   g.addEdges('A', 'C');
//   g.addEdges('B', 'D');
//   g.addEdges('C', 'D');
//   g.addEdges('C', 'E');
//   g.addEdges('D', 'F');
//   print('bfs:');
//   g.bfs('A');
//   print('dfs:');
//   g.dfs('A');
// }
//************************************************************************************************************************** */

//BST
//-----------
// class TreeNode {
//   int value;
//   TreeNode? left;
//   TreeNode? right;
//   TreeNode(this.value, [this.left, this.right]);
// }

// class BinarySearchTree {
//   TreeNode? root; c
//   void insert(int value) {
//     final newNode = TreeNode(value);
//     if (root == null) {
//       root = newNode;
//     } else {
//       insertNode(root!, newNode);
//     }
//   }

//   void insertNode(TreeNode root, TreeNode newNode) {
//     if (newNode.value < root.value) {
//       if (root.left == null) {
//         root.left = newNode;
//       } else {
//         insertNode(root.left!, newNode);
//       }
//     } else {
//       if (root.right == null) {
//         root.right = newNode;
//       } else {
//         insertNode(root.right!, newNode);
//       }
//     }
//   }

//   List<int> inOrderTraversal(TreeNode? root, [List<int>? result]) {
//     result ??= [];
//     if (root != null) {
//       inOrderTraversal(root.left, result);
//       result.add(root.value);
//       inOrderTraversal(root.right, result);
//     }
//     return result;
//   }

//   void printall() {
//     final result = inOrderTraversal(root);
//     print(result);
//   }

//   bool search(int target, TreeNode? root) {
//     if (root == null) return false;
//     if (root.value == target) return true;
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

//   TreeNode findMin(TreeNode node) {
//     while (node.left != null) {
//       node = node.left!;
//     }
//     return node;
//   }

//   TreeNode findMax(TreeNode node) {
//     while (node.right != null) {
//       node = node.right!;
//     }
//     return node;
//   }

//   TreeNode? deleteNode(TreeNode? root, int value) {
//     if (root == null) return null;
//     if (value < root.value) {
//       root.left = deleteNode(root.left, value);
//     } else if (value > root.value) {
//       root.right = deleteNode(root.right, value);
//     } else {
//       if (root.left == null) return root.right;
//       if (root.right == null) return root.left;
//       TreeNode minNode = findMin(root.right!);
//       root.value = minNode.value;
//       root.right = deleteNode(root.right, root.value);
//     }
//     return root;
//   }
// }

// void main() {
//   BinarySearchTree bst = BinarySearchTree();
//   bst.insert(50);
//   bst.insert(22);
//   bst.insert(69);
//   bst.insert(89);
//   bst.insert(10);
//   bst.printall();
//   print('search:${bst.search(69, bst.root)}');
//   print('is BST? : ${bst.isBST(bst.root)}');
//   print('delete: ');
//   bst.deleteNode(bst.root, 69);
//   bst.printall();
// }
//****************************************************************************************************************************
//
//
// */

//Heap Sort)
//-------------------------
// void swap(List<int> arr, root, i) {
//   int temp = arr[i];
//   arr[i] = arr[root];
//   arr[root] = temp;
// }

// void heapify(List<int> arr, int size, int i) {
//   int root = i;
//   int leftChild = 2 * i + 1;
//   int rightChild = 2 * i + 2;

//   if (leftChild < size && arr[leftChild] > arr[root]) {
//     root = leftChild;
//   }
//   if (rightChild < size && arr[rightChild] > arr[root]) {
//     root = rightChild;
//   }
//   if (root != i) {
//     swap(arr, root, i);
//     heapify(arr, size, root);
//   }
// }

// void heapSort(List<int> arr) {
//   int length = arr.length;
//   for (int i = (length ~/ 2) - 1; i >= 0; i--) {
//     heapify(arr, length, i);
//   }

//   for (int i = length - 1; i > 0; i--) {
//     swap(arr, 0, i);
//     heapify(arr, i, 0);
//   }
// }

// void main() {
//   List<int> arr = [12, 11, 13, 5, 6, 7];

//   heapSort(arr);

//   print(arr);
//}
//***********************************************************
//*********************************************************** */ */
//Trie
//-------------

//***********************/////////////////////////////////*****************************
//*************************************************************************************
//
//
// */ */ */

//Gph

//HEAP
// class MaxHeap {
//   List<int> heap = [];
//   int getparentChildIndex(int index) {
//     return (index ~/ 2);
//   }

//   int getLeftChildIndex(int index) {
//     return 2 * index + 1;
//   }

//   int getRightChildIndex(int index) {
//     return 2 * index + 2;
//   }

//   void insert(int value) {
//     heap.add(value);
//     heapifyUp();
//   }

//   void swap(index1, index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   void heapifyUp() {
//     int index = heap.length - 1;
//     while (index > 0) {
//       int parent = getparentChildIndex(index);
//       if (heap[index] < heap[parent]) {
//         swap(index, parent);
//         index = parent;
//       }
//       break;
//     }
//   }

//   int? remove() {
//     if (heap.isEmpty) return null;
//     int max = heap[0];
//     int end = heap.removeLast();
//     if (heap.isNotEmpty) {
//       heap[0] = end;
//       heapifyDown();
//     }
//     return max;
//   }

//   void heapifyDown() {
//     int index = 0;
//     int length = heap.length;
//     int newRoot = heap[0];

//     while (true) {
//       int leftChildIndex = getLeftChildIndex(index);
//       int rightChildIndex = getRightChildIndex(index);
//       int? leftChild, rightChild;
//       int? swap;

//       if (leftChildIndex < length) {
//         leftChild = heap[leftChildIndex];
//         if (leftChildIndex > newRoot) {
//           swap = leftChildIndex;
//         }

//         if (rightChildIndex < length) {
//           rightChild = heap[rightChildIndex];
//           if ((swap == null && leftChild > newRoot) ||
//               (swap != null && rightChild > heap[swap])) {
//             swap = rightChildIndex;
//           }
//         }
//         if (swap == null) break;
//         heap[index] = heap[swap];
//         heap[swap] = newRoot;
//         index = swap;
//       }
//     }
//   }
// }

// void main() {
//   MaxHeap heap = MaxHeap();
//   heap.insert(50);
//   heap.insert(10);
//   heap.insert(5);
//   heap.insert(98);
//   heap.insert(45);

//   print(heap.heap);
//   print(heap.remove());
//   print(heap.heap);
// }
//******************************************** */

// class MaxHeap {
//   List<int> heap = [];
//   int getparentsChildIndex(int index) {
//     return (index - 1) ~/ 2;
//   }

//   int getleftChildIndex(int index) {
//     return 2 * index + 1;
//   }

//   int getrightChildIndex(int index) {
//     return 2 * index + 2;
//   }

//   void swap(int index1, int index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   void insert(int value) {
//     heap.add(value);
//     heapifyUp();
//   }

//   void heapifyUp() {
//     int index = heap.length - 1;
//     while (index > 0) {
//       int parent = getparentsChildIndex(index);
//       if (heap[index] > heap[parent]) {
//         swap(index, parent);
//         index = parent;
//       } else {
//         break;
//       }
//     }
//   }

//   int? remove() {
//     if (heap.isEmpty) return null;
//     int max = heap[0];
//     int end = heap.removeLast();
//     if (heap.isNotEmpty) {
//       heap[0] = end;
//       heapifyDown();
//     }
//     return max;
//   }

//   void heapifyDown() {
//     int index = 0;
//     int length = heap.length;
//     int newRoot = heap[0];
//     while (true) {
//       int leftChildIndex = getleftChildIndex(index);
//       int rightChildIndex = getrightChildIndex(index);
//       int? leftChild, rightChild;
//       int? swap;

//       if (leftChildIndex < length) {
//         leftChild = heap[leftChildIndex];
//         if (leftChild > newRoot) {
//           swap = leftChildIndex;
//         }
//       }

//       if (rightChildIndex < length) {
//         rightChild = heap[rightChildIndex];
//         if ((swap == null && rightChild > newRoot) ||
//             (swap != null && rightChild > heap[swap])) {
//           swap = rightChildIndex;
//         }
//       }

//       if (swap == null) break;
//       heap[index] = heap[swap];
//       heap[swap] = newRoot;
//       index = swap;
//     }
//   }
// }

// void main() {
//   MaxHeap heap = MaxHeap();
//   heap.insert(50);
//   heap.insert(10);
//   heap.insert(20);
//   heap.insert(80);
//   heap.insert(99);
//   print(heap.heap);
//   print(heap.remove());
//   print('result: ');
//   print(heap.heap);
// }

class MaxHeap {
  List<int> heap = [];
  int getParentChildIndex(int index) {
    return (index - 1 ~/ 2);
  }

  int getLeftChildIndex(int index) {
    return 2 * index + 1;
  }

  int getrightChildIndex(int index) {
    return 2 * index + 2;
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  void insert(int value) {
    heap.add(value);
    heapifyUp();
  }

  void heapifyUp() {
    int index = heap.length - 1;
    while (index > 0) {
      int parent = getParentChildIndex(index);
      if (heap[index] > heap[parent]) {
        swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  int? remove() {
    if (heap.isEmpty) return null;
    int max = heap[0];
    int end = heap.removeLast();
    if (heap.isNotEmpty) {
      heap[0] = end;
      heapifyDown();
    }
    return max;
  }

  void heapifyDown() {
    int index = 0;
    int length = heap.length;
    int newRoot = heap[0];
    while (true) {
      int leftChildIndex = getLeftChildIndex(index);
      int rightChildIndex = getrightChildIndex(index);
      int? leftChild, rightChild;
      int? swap;

      if (leftChildIndex < length) {
        leftChild = heap[leftChildIndex];
        if (leftChild > newRoot) {
          swap = leftChildIndex;
        }
      }

      if (rightChildIndex < length) {
        rightChild = heap[rightChildIndex];
        if ((swap == null && rightChild > newRoot) ||
            (swap != null && rightChild > heap[swap])) {
          swap = rightChildIndex;
        }
      }

      if (swap == null) break;
      heap[index] = heap[swap];
      heap[swap] = newRoot;
      index = swap;
    }
  }
}
