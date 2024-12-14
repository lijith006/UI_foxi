import 'dart:collection';

class TreeNode {
  int value;
  List<TreeNode> children;

  TreeNode(this.value, [this.children = const []]);
}

List<int> levelOrderTraversal(TreeNode? root) {
  List<int> result = [];
  if (root == null) return result;

  Queue<TreeNode> queue = Queue();
  queue.add(root);

  while (queue.isNotEmpty) {
    TreeNode node = queue.removeFirst();
    result.add(node.value);

    for (var child in node.children) {
      queue.add(child);
    }
  }

  return result;
}

void main() {
  TreeNode root = TreeNode(1, [
    TreeNode(2, [TreeNode(4), TreeNode(5)]),
    TreeNode(3),
  ]);

  print(levelOrderTraversal(root));
}
