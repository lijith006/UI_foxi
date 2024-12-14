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

  insertNode(TreeNode root, TreeNode newNode) {
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

  bool search(int target, TreeNode? root) {
    if (root == null) return false;
    if (root.value == target) return true;
    if (target < root.value) {
      return search(target, root.left);
    } else {
      return search(target, root.right);
    }
  }

  List<int> postOrderTraversal(TreeNode? root, [List<int>? result]) {
    result ??= [];
    if (root != null) {
      postOrderTraversal(root.left, result);
      postOrderTraversal(root.right, result);
      result.add(root.value);
    }
    return result;
  }

  void printalll() {
    final result = postOrderTraversal(root);
    print('Post Order Traversal $result');
  }

  bool isBST(TreeNode? root, [int min = -2147483648, int max = 2147483648]) {
    if (root == null) return true;
    if (root.value <= min || root.value >= max) return false;
    return isBST(root.left, min, root.value) &&
        isBST(root.right, root.value, max);
  }
}

//2147483648

void main() {
  BinarySearchTree bst = BinarySearchTree();

  bst.insert(5);
  bst.insert(9);
  bst.insert(7);
  bst.insert(11);
  bst.insert(15);
  print(bst.isBST(bst.root));

  print(bst.search(11, bst.root));
  bst.printalll();
}
