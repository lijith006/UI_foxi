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

  List<int> inOrderTraversal(TreeNode? rootNode, [List<int>? result]) {
    result ??= [];
    if (rootNode != null) {
      inOrderTraversal(rootNode.left, result);
      result.add(rootNode.value);
      inOrderTraversal(rootNode.right, result);
    }
    return result;
  }

  void printTree() {
    final result = inOrderTraversal(root);
    print('In-order Traversal: $result');
  }
}

void main() {
  final bstTree = BinarySearchTree();

  bstTree.insert(10);
  bstTree.insert(11);
  bstTree.insert(8);

  bstTree.printTree();
}
