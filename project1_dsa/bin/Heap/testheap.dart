class MaxHeap {
  List<Map<String, dynamic>> heap = [];

  int getParentIndex(int index) => (index - 1) ~/ 2;
  int getLeftChildIndex(int index) => 2 * index + 1;
  int getRightChildIndex(int index) => 2 * index + 2;

  void insert(String value, int priority) {
    final element = {'value': value, 'priority': priority};
    heap.add(element);
    heapifyUp();
  }

  void heapifyUp() {
    int index = heap.length - 1;

    while (index > 0) {
      int parent = getParentIndex(index);

      if (heap[index]['priority'] > heap[parent]['priority']) {
        swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  Map<String, dynamic>? removeMax() {
    if (heap.isEmpty) return null;

    final max = heap.first;
    final end = heap.removeLast();

    if (heap.isNotEmpty) {
      heap[0] = end;
      heapifyDown();
    }
    return max;
  }

  void heapifyDown() {
    int index = 0;
    final length = heap.length;
    final newRoot = heap[0];

    while (true) {
      int leftChildIndex = getLeftChildIndex(index);
      int rightChildIndex = getRightChildIndex(index);
      int? swap;

      if (leftChildIndex < length) {
        if (heap[leftChildIndex]['priority'] > newRoot['priority']) {
          swap = leftChildIndex;
        }
      }

      if (rightChildIndex < length) {
        if ((swap == null &&
                heap[rightChildIndex]['priority'] > newRoot['priority']) ||
            (swap != null) &&
                heap[rightChildIndex]['priority'] > heap[swap]['priority']) {
          swap = rightChildIndex;
        }
      }

      if (swap == null) break;
      heap[index] = heap[swap];
      heap[swap] = newRoot;
      index = swap;
    }
  }

  void swap(int index1, index2) {
    final temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }
}

void main() {
  MaxHeap maxHeap = MaxHeap();

  maxHeap.insert('Task A', 5);
  maxHeap.insert('Task B', 3);
  maxHeap.insert('Task C', 8);
  maxHeap.insert('Task D', 2);

  print(maxHeap.removeMax());
  print(maxHeap.heap);
}
