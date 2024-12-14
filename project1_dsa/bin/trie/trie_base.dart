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

  bool search(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!node.children.containsKey(char)) {
        return false;
      }

      node = node.children[char]!;
    }

    return node.isEnd;
  }

  bool prefixSearch(String prefix) {
    TrieNode node = root;

    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];

      if (!node.children.containsKey(char)) {
        return false;
      }

      node = node.children[char]!;
    }

    return true;
  }
}

void main() {
  Trie trie = Trie();

  trie.insert('cat');
  trie.insert('shamnad');

  print(trie.search('cat'));
  print(trie.prefixSearch('sha'));
  print(trie.search('adil'));
}
