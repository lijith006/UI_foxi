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

//   void heapifyUp() {
//     int index = heap.length - 1;

//     while (index > 0) {
//       int parent = getParentIndex(index);

//       if (heap[index] > heap[parent]) {
//         _swap(index, parent);
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
//             (swap != null && rightChild > newRoot)) {
//           swap = rightChildIndex;
//         }
//       }

//       if (swap == null) break;

//       heap[index] = heap[swap];
//       heap[swap] = newRoot;
//       index = swap;
//     }
//   }

//   void _swap(int index1, int index2) {
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
class MaxHeap {
  List<int> heap = [];

  int getParentIndex(int index) {
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

  void heapifyUp() {
    int index = heap.length - 1;

    while (index > 0) {
      int parent = getParentIndex(index);

      if (heap[index] > heap[parent]) {
        // Swap the current index with the parent
        int temp = heap[index];
        heap[index] = heap[parent];
        heap[parent] = temp;

        index = parent;
      } else {
        break;
      }
    }
  }

  int? removeMax() {
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

        if ((swap == null && rightChild > newRoot) ||
            (swap != null && rightChild > leftChild!)) {
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
  MaxHeap heap = MaxHeap();

  heap.insert(5);
  heap.insert(6);
  heap.insert(33);
  heap.insert(77);
  heap.insert(100);
  heap.insert(88);
  heap.insert(2);
  heap.insert(34);

  print(heap.heap);

  print(heap.removeMax());

  print(heap.heap);
}
