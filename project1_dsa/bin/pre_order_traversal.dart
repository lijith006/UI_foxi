class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value, [this.left, this.right]);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(int value) {
    final newNode = TreeNode(value);
    if (root == null) {
      root = newNode;
    } else {
      insertNode(root!, newNode);
    }
  }

  void insertNode(TreeNode root, TreeNode newNode) {
    if (newNode.value < root.value) {
      if (root.left == null) {
        root.left = newNode;
      } else {
        insertNode(root.left!, newNode);
      }
    } else {
      if (root.right == null) {
        root.right = newNode;
      } else {
        insertNode(root.right!, newNode);
      }
    }
  }

  List<int> preOrderTraversal(TreeNode? root, [List<int>? result]) {
    result ??= [];
    if (root != null) {
      result.add(root.value);
      preOrderTraversal(root.left, result);
      preOrderTraversal(root.right, result);
    }
    return result;
  }

  void printall() {
    final result = preOrderTraversal(root);
    print('PreOrderTraversal: $result');
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(50);
  bst.insert(5);
  bst.insert(22);
  bst.insert(10);
  bst.insert(8);
  bst.insert(100);
  bst.insert(33);
  bst.printall();
}
