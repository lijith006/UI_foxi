class MinHeap {
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
      int parentIndex = getParentIndex(index);

      if (heap[parentIndex] > heap[index]) {
        _swap(parentIndex, index);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  int? removeMin() {
    if (heap.isEmpty) return null;

    int min = heap[0];
    int end = heap.removeLast();

    if (heap.isNotEmpty) {
      heap[0] = end;
      heapifyDown();
    }

    return min;
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

        if (leftChild < newRoot) {
          swap = leftChildIndex;
        }
      }

      if (rightChildIndex < length) {
        rightChild = heap[rightChildIndex];

        if ((swap == null && rightChild < newRoot) ||
            (swap != null && rightChild < heap[swap])) {
          swap = rightChildIndex;
        }
      }

      if (swap == null) break;

      heap[index] = heap[swap];
      heap[swap] = newRoot;
      index = swap;
    }
  }

  void _swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }
}

void main() {
  MinHeap heap = MinHeap();

  heap.insert(7);
  heap.insert(9);
  heap.insert(10);
  heap.insert(4);
  heap.insert(3);
  heap.insert(15);

  print(heap.heap);

  heap.insert(2);
  heap.insert(10);

  print(heap.heap);

  print(heap.removeMin());

  print(heap.heap);
}
