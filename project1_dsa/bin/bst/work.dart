// //BST

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

//   bool search(TreeNode? root, int target) {
//     if (root == null) return false;
//     if (target == root.value) return true;
//     if (target < root.value) {
//       return search(root.left, target);
//     } else {
//       return search(root.right, target);
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

// //Delete

//   TreeNode? deleteNode(int value, TreeNode? root) {
//     if (root == null) return null;
//     if (value < root.value) {
//       root.left = deleteNode(value, root.left);
//     } else if (value > root.value) {
//       root.right = deleteNode(value, root.right);
//     } else {
//       if (root.left == null) return root.right;
//       if (root.right == null) return root.left;
//       TreeNode minNode = findMin(root.right!);
//       root.value = minNode.value;
//       root.right = deleteNode(minNode.value, root.right);
//     }
//     return root;
//   }

//   //Second Largest

//   TreeNode? secondLargest(TreeNode? root) {
//     if (root == null || (root.left == null && root.right == null)) return null;
//     TreeNode? parent;
//     TreeNode? current = root;

//     while (current?.right != null) {
//       parent = current;
//       current = current?.right;
//     }

//     if (current?.left != null) {
//       return findMax(root.left!);
//     }

//     return parent;
//   }
// }

// void main() {
//   BinarySearchTree bst = BinarySearchTree();
//   bst.insert(40);
//   bst.insert(10);
//   bst.insert(55);
//   bst.insert(66);
//   bst.insert(4);
//   print('search :${bst.search(bst.root, 55)}');
//   print(bst.isBST(bst.root));
//   bst.printall();

//   print('deleting: ${bst.deleteNode(10, bst.root)}');
//   bst.printall();

//   print(bst.secondLargest(bst.root)?.value);
// }
//********************************************************************* */
//********************************************************************* */

// void swap(List<int> arr, int i, int root) {
//   int temp = arr[i];
//   arr[i] = arr[root];
//   arr[root] = temp;
// }

// void heapify(List<int> arr, int size, int i) {
//   int root = i;
//   int leftchild = 2 * i + 1;
//   int rightchild = 2 * i + 2;

//   if (leftchild < size && arr[leftchild] > arr[root]) {
//     root = leftchild;
//   }

//   if (rightchild < size && arr[rightchild] > arr[root]) {
//     root = rightchild;
//   }

//   swap(arr, i, root);
//   heapify(arr, size, i);
// }

// void swap(int root, int i, List<int> arr) {
//   int temp = arr[i];
//   arr[i] = arr[root];
//   arr[root] = temp;
// }

// void heapify(List<int> arr, int size, int i) {
//   int root = i;
//   int leftchild = i * 2 + 1;
//   int rightchild = i * 2 + 2;

//   if (leftchild < size && arr[leftchild] > arr[root]) {
//     root = leftchild;
//   }
//   if (rightchild < size && arr[rightchild] > arr[root]) {
//     root = rightchild;
//   }
//   swap(root, i, arr);
//   heapify(arr, size, i);
// }

// void heapsort(List<int> arr) {
//   int length = arr.length;
// }
//*********************************************************************************
//************************************************************************************ */ */
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

//   TreeNode findMin(TreeNode node) {
//     while (node.left != null) {
//       node = node.left!;
//     }
//     return node;
//   }

//   TreeNode findMax(TreeNode node) {
//     if (node.right == null) {
//       node = node.right!;
//     }
//     return node;
//   }

//   TreeNode? deleteNode(int target, TreeNode? root) {
//     if (root == null) return null;
//     if (target < root.value) {
//       root.left = deleteNode(target, root.left);
//     } else if (target > root.value) {
//       root.right = deleteNode(target, root.right);
//     } else {
//       if (root.left == null) return root.right;
//       if (root.right == null) return root.left;
//       TreeNode minNode = findMin(root.right!);
//       root.value = minNode.value;
//       root.right = deleteNode(minNode.value, root.right);
//     }
//     return root;
//   }

//   bool search(TreeNode? root, int target) {
//     if (root == null) return false;
//     if (root.value == target) return true;
//     if (target < root.value) {
//       return search(root.left, target);
//     } else {
//       return search(root.right, target);
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
// }

// void main() {
//   BinarySearchTree bst = BinarySearchTree();
//   bst.insert(55);
//   bst.insert(5);
//   bst.insert(2);
//   bst.insert(99);
//   bst.insert(58);
//   bst.insert(78);

//   bst.printall();
// }
//******************************************************************************
//******************************************************************** */ */
//BFS

// import 'dart:collection';

// class Graph {
//   Map<String, List<String>> adjList = {};
//   void addVertices(String vertex) {
//     if (!adjList.containsKey(vertex)) {
//       adjList[vertex] = [];
//     }
//   }

//   void addEdges(String v1, String v2) {
//     if (!adjList.containsKey(v1)) addVertices(v1);
//     if (!adjList.containsKey(v2)) addVertices(v2);
//     adjList[v1]!.add(v2);
//     adjList[v2]!.add(v1);
//   }

//   void bfs(start) {
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
// }

// void main() {
//   Graph g = Graph();
//   g.addVertices('A');
//   g.addVertices('B');

//   g.addVertices('C');

//   g.addVertices('D');

//   g.addVertices('E');
//   g.addEdges('A', 'B');
//   g.addEdges('A', 'C');
//   g.addEdges('B', 'D');
//   g.addEdges('C', 'D');
//   g.addEdges('D', 'E');
//   print('bfs :');
//   g.bfs('A');
//   print('dfs : ');
// }

// class MaxHeap {
//   List<int> heap = [];
//   int getParentIndex(int index) {
//     return (index - 1) ~/ 2;
//   }

//   int getleftchildIndex(int index) {
//     return 2 * index + 1;
//   }

//   int getrightchildIndex(int index) {
//     return 2 * index + 2;
//   }

//   void insert(int value) {
//     heap.add(value);
//     heapifyUp();
//   }

//   void heapifyUp() {
//     int index = heap.length - 1;

//     while (index > 0) {
//       int parent = getParentIndex(index);

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
//       int leftchildindex = getleftchildIndex(index);
//       int rightchildIndex = getrightchildIndex(index);
//       int? leftChild, rightChild;
//       int? swap;

//       if (leftchildindex < length) {
//         leftChild = heap[leftchildindex];

//         if (leftChild > newRoot) {
//           swap = leftchildindex;
//         }
//       }
//       if (rightchildIndex < length) {
//         rightChild = heap[rightchildIndex];

//         if ((swap == null && rightChild > newRoot) ||
//             (swap != null && rightChild > heap[swap])) {
//           swap = rightchildIndex;
//         }
//       }
//       if (swap == null) break;
//       heap[index] = heap[swap];
//       heap[swap] = newRoot;
//       index = swap;
//     }
//   }

//   void swap(int index1, int index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }
// }

// void main() {
//   MaxHeap heap = MaxHeap();

//   heap.insert(5);
//   heap.insert(6);
//   heap.insert(33);
//   heap.insert(77);
//   heap.insert(100);
//   heap.insert(88);
//   heap.insert(2);
//   heap.insert(34);

//   print(heap.heap);

//   print(heap.remove());

//   print(heap.heap);
// }

// class MaxHeap {
//   List<int> heap = [];
//   int getParentIndex(int index) {
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
//       int parent = getParentIndex(index);

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

//   heapifyDown() {
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

//   heap.insert(5);
//   heap.insert(6);
//   heap.insert(33);
//   heap.insert(77);
//   heap.insert(100);
//   heap.insert(88);
//   heap.insert(2);
//   heap.insert(34);

//   print(heap.heap);

//   print(heap.remove());

//   print(heap.heap);
// }

// class Maxheap {
//   List<int> heap = [];

//   int getParentsindex(int index) {
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

//   void swap(int index1, index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   void heapifyUp() {
//     int index = heap.length - 1;
//     while (index > 0) {
//       int parents = getParentsindex(index);

//       if (heap[index] > heap[parents]) {
//         swap(index, parents);
//         index = parents;
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
//         if ((swap == null && rightChild < length) ||
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

class Maxheap {
  List<int> heap = [];
  int getparentIndex(int index) {
    return (index - 1) ~/ 2;
  }

  int getLeftChildIndex(int index) {
    return 2 * index + 1;
  }

  int getRightChildIndex(int index) {
    return 2 * index + 2;
  }

  void insert(int value) {
    heap.add(value);
    heapifyUp();
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  void heapifyUp() {
    int index = heap.length - 1;
    while (index > 0) {
      int parent = getparentIndex(index);

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
      int rightChildIndex = getRightChildIndex(index);
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
        if ((swap == null && rightChild < length) ||
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

void main() {
  Maxheap heap = Maxheap();
  heap.insert(50);
  heap.insert(22);
  heap.insert(66);
  heap.insert(98);
  heap.insert(2);
  heap.insert(68);
  heap.insert(120);

  print(heap.heap);
  print(heap.remove());
  print(heap.heap);
}
