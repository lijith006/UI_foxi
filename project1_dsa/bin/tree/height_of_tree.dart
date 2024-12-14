class TreeNode {
  int value;
  List<TreeNode> children;

  TreeNode(this.value, [this.children = const []]);
}

int findHeight(TreeNode? root) {
  if (root == null) return -1;
  int maxHeight = -1;
  for (var child in root.children) {
    maxHeight = max(maxHeight, findHeight(child));
  }
  return maxHeight + 1;
}

int max(int a, int b) => a > b ? a : b;

void main() {
  TreeNode root = TreeNode(1, [
    TreeNode(2, [TreeNode(4), TreeNode(5)]),
    TreeNode(3),
  ]);

  print(findHeight(root));
}
