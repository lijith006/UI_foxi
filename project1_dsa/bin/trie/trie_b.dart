// class TrieNode {
//   Map<String, TrieNode> children = {};
//   bool isEnd = false;
//   TrieNode();
// }

// class Trie {
//   TrieNode root = TrieNode();

//   //Insert
//   void insert(String word) {
//     TrieNode node = root;
//     for (var char in word.split('')) {
//       if (!node.children.containsKey(char)) {
//         node.children[char] = TrieNode();
//       }
//       node = node.children[char]!;
//     }
//     node.isEnd = true;
//   }

//   //search
//   bool search(String word) {
//     TrieNode node = root;
//     for (var char in word.split('')) {
//       if (!node.children.containsKey(char)) {
//         return false;
//       }
//       node = node.children[char]!;
//     }
//     return node.isEnd;
//   }

//   //check prefix exists
//   bool prefixSearch(String prefix) {
//     TrieNode node = root;
//     for (var char in prefix.split('')) {
//       if (!node.children.containsKey(char)) {
//         return false;
//       }
//       node = node.children[char]!;
//     }
//     return true;
//   }
// }

// void main() {
//   Trie trie = Trie();
//   trie.insert('cat');
//   trie.insert('Lijith');

//   print(trie.search('cat'));
//   print(trie.prefixSearch('lij'));
//   print(trie.search('adil'));
// }

// class TrieNode {
//   Map<String, TrieNode> childern = {};
//   bool isEnd = false;
//   TrieNode();
// }

// class Trie {
//   TrieNode root = TrieNode();

//   void insert(String word) {
//     TrieNode node = root;
//     for (var char in word.split('')) {
//       if (!node.childern.containsKey(char)) {
//         node.childern[char] = TrieNode();
//       }
//       node = node.childern[char]!;
//     }
//     node.isEnd = true;
//   }

//   bool search(String word) {
//     TrieNode node = root;
//     for (var char in word.split('')) {
//       if (!node.childern.containsKey(char)) {
//         return false;
//       }
//       node = node.childern[char]!;
//     }
//     return node.isEnd;
//   }
// }

// void main() {
//   Trie trie = Trie();

//   trie.insert('Lijith');
//   trie.insert('car');
//   print(trie.search('Lijith'));
// }

class MaxHeap {
  List<int> heap = [];
  int getParentChildIndex(int index) {
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
            (swap != null && rightChild > heap[swap])) {
          swap = rightChildIndex;
        }
        if (swap == null) break;
        heap[index] = heap[swap];
        heap[swap] = newRoot;
        index = swap;
      }
    }
  }
}
