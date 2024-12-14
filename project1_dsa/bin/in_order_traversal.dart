class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value, [this.left, this.right]);
}

class BinerySearchTree {
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

  List<int> inOrdertraversal(TreeNode? root, [List<int>? result]) {
    result ??= [];
    if (root != null) {
      inOrdertraversal(root.left, result);
      result.add(root.value);
      inOrdertraversal(root.right, result);
    }
    return result;
  }

  void printall() {
    final result = inOrdertraversal(root);
    print('In Order Traversal : $result');
  }
}

void main() {
  BinerySearchTree bst = BinerySearchTree();
  bst.insert(40);
  bst.insert(10);
  bst.insert(25);
  bst.insert(5);
  bst.insert(100);
  bst.insert(59);
  bst.printall();
}
