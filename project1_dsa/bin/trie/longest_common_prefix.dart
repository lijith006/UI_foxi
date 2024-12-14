class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEnd = false;

  TrieNode();
}

class Trie {
  final TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }

      node = node.children[char]!;
    }

    node.isEnd = true;
  }

  String findLongestCommonPrefix() {
    TrieNode node = root;
    String prefix = '';

    while (node.children.length == 1 && !node.isEnd) {
      String char = node.children.keys.first;
      prefix += char;
      node = node.children[char]!;
    }

    return prefix;
  }
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return '';

  Trie trie = Trie();

  for (String word in strs) {
    trie.insert(word);
  }

  return trie.findLongestCommonPrefix();
}

void main() {
  List<String> strs1 = ["flower", "flow", "flight"];
  List<String> strs2 = ["dog", "racecar", "car"];

  print(longestCommonPrefix(strs1));
  print(longestCommonPrefix(strs2));
}
