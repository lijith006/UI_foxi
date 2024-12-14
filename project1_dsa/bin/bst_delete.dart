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

  bool search(int target, TreeNode? root) {
    if (root == null) return false;
    if (root.value == target) return true;
    if (target < root.value) {
      return search(target, root.left);
    } else {
      return search(target, root.right);
    }
  }

  List<int> inOrderTraversal(TreeNode? root, [List<int>? result]) {
    result ??= [];
    if (root != null) {
      inOrderTraversal(root.left, result);
      result.add(root.value);
      inOrderTraversal(root.right, result);
    }
    return result;
  }

  bool isBST(TreeNode? root, [int min = -2147483648, int max = 2147483648]) {
    if (root == null) return true;
    if (root.value <= min || root.value >= max) return false;
    return isBST(root.left, min, root.value) &&
        isBST(root.right, root.value, max);
  }

  TreeNode findMin(TreeNode root) {
    while (root.left != null) {
      root = root.left!;
    }
    return root;
  }

  TreeNode findMax(TreeNode node) {
    while (node.right != null) {
      node = node.right!;
    }
    return node;
  }

  TreeNode? deleteNode(int value, TreeNode? root) {
    if (root == null) return null;
    if (value < root.value) {
      root.left = deleteNode(value, root.left);
    } else if (value > root.value) {
      root.right = deleteNode(value, root.right);
    } else {
      if (root.left == null) return root.right;
      if (root.right == null) return root.left;
      TreeNode minNode = findMin(root.right!);
      root.value = minNode.value;
      root.right = deleteNode(minNode.value, root.right);
    }
    return root;
  }
//height

  int findheight(TreeNode? node) {
    if (node == null) return -1;
    int leftHeight = findheight(node.left);
    int rightheight = findheight(node.right);
    return (leftHeight > rightheight ? leftHeight : rightheight) + 1;
  }

//degree of node

  // int findDegree(int value, TreeNode? node) {
  //   if (node == null) {
  //     return -1;
  //   }

  //   if (node.value == value) {
  //     int degree = 0;
  //     if (node.left != null) degree++;
  //     if (node.right != null) degree++;
  //     return degree;
  //   }
  //   if (value < node.value) {
  //     return findDegree(value, node.left);
  //   } else {
  //     return findDegree(value, node.right);
  //   }
  // }

  int findDegree(TreeNode? node, int value) {
    if (node == null) return -1;
    if (node.value == value) {
      int degree = 0;
      if (node.left != null) degree++;
      if (node.right != null) degree++;
      return degree;
    }
    if (value < node.value) {
      return findDegree(node.left, value);
    } else {
      return findDegree(node.right, value);
    }
  }

  

  int findDepth(TreeNode? node, int depth, int value) {
    if (node == null) return -1;
    if (node.value == value) return depth;
    if (value < node.value) {
      return findDepth(node.left, depth + 1, value);
    } else {
      return findDepth(node.right, depth + 1, value);
    }
  }

  void printall() {
    final result = inOrderTraversal(root);
    print('inOrder $result');
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(20);
  bst.insert(40);
  bst.insert(10);
  bst.insert(66);

  print('Max:${bst.findMax(bst.root!).value}');

  print('Min ${bst.findMin(bst.root!).value}');

  print('search result: ${bst.search(10, bst.root)}');
  print('is BST: ${bst.isBST(bst.root)}');
  bst.printall();
  bst.deleteNode(10, bst.root);
  bst.printall();
  print(bst.findheight(bst.root));
  print(bst.findDegree(bst.root, 40));
  print('depth:${bst.findDepth(bst.root, 0, 40)}');
}
