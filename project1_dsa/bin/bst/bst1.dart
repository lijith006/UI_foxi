class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(int value) {
    root = _insert(root, value);
  }

  TreeNode _insert(TreeNode? node, int value) {
    if (node == null) {
      return TreeNode(value);
    }
    if (value < node.value) {
      node.left = _insert(node.left, value);
    } else if (value > node.value) {
      node.right = _insert(node.right, value);
    }
    return node;
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(10);
  bst.insert(5);
  bst.insert(20);
  bst.insert(3);
  bst.insert(7);
  bst.insert(15);
  bst.insert(30);

  print("Tree created with root value: ${bst.root!.value}");
}
