void swap(List<int> arr, int i, int root) {
  int temp = arr[i];
  arr[i] = arr[root];
  arr[root] = temp;
}

void heapify(List<int> arr, int size, int i) {
  int root = i;
  int leftIndex = 2 * i + 1;
  int rightIndex = 2 * i + 2;

  if (leftIndex < size && arr[leftIndex] > arr[root]) {
    root = leftIndex;
  }

  if (rightIndex < size && arr[rightIndex] > arr[root]) {
    root = rightIndex;
  }

  if (root != i) {
    swap(arr, i, root);

    heapify(arr, size, root);
  }
}

void heapSort(List<int> arr) {
  int length = arr.length;

  for (int i = (length ~/ 2) - 1; i >= 0; i--) {
    heapify(arr, length, i);
  }

  for (int i = length - 1; i > 0; i--) {
    swap(arr, 0, i);

    heapify(arr, i, 0);
  }
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];

  heapSort(arr);

  print(arr);
}

//*********************************************************** */
//HEAP
//Heap
//--------------------------------
//import 'dart:collection';

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
