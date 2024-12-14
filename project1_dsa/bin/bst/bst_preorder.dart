class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(int value) {
    final newNode = TreeNode(value);
    if (root == null) {
      root = newNode;
    } else {
      _insertNode(root!, newNode);
    }
  }

  void _insertNode(TreeNode rootNode, TreeNode newNode) {
    if (newNode.value < rootNode.value) {
      if (rootNode.left == null) {
        rootNode.left = newNode;
      } else {
        _insertNode(rootNode.left!, newNode);
      }
    } else {
      if (rootNode.right == null) {
        rootNode.right = newNode;
      } else {
        _insertNode(rootNode.right!, newNode);
      }
    }
  }

  List<int> preOrderTraversal(TreeNode? rootNode, [List<int>? result]) {
    result ??= [];
    if (rootNode != null) {
      result.add(rootNode.value);
      preOrderTraversal(rootNode.left, result);
      preOrderTraversal(rootNode.right, result);
    }
    return result;
  }

  void printTree() {
    final result = preOrderTraversal(root);
    print(result);
  }
}

void main() {
  final list = BinarySearchTree();

  list.insert(5);
  list.insert(3);
  list.insert(8);
  list.insert(2);
  list.insert(13);
  list.insert(4);

  print(list.root);

  list.printTree();
}
