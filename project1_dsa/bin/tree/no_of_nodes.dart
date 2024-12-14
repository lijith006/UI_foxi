class TreeNode {
  int value;
  List<TreeNode> children;

  TreeNode(this.value, [this.children = const []]);
}

int countNodes(TreeNode? root) {
  if (root == null) return 0;
  int count = 1;
  for (var child in root.children) {
    count += countNodes(child);
  }
  return count;
}

void main() {
  TreeNode root = TreeNode(1, [
    TreeNode(2, [TreeNode(4), TreeNode(5)]),
    TreeNode(3),
  ]);

  print(countNodes(root));
}
