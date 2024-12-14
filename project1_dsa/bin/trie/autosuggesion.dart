class TrieNode {
  Map<String, TrieNode> child = {};
  bool isEnd = false;

  TrieNode();
}

class Trie {
  final TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!node.child.containsKey(char)) {
        node.child[char] = TrieNode();
      }

      node = node.child[char]!;
    }

    node.isEnd = true;
  }

  bool search(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!node.child.containsKey(char)) {
        return false;
      }

      node = node.child[char]!;
    }

    return node.isEnd;
  }

  bool prefixSearch(String prefix) {
    TrieNode node = root;

    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];

      if (!node.child.containsKey(char)) {
        return false;
      }

      node = node.child[char]!;
    }

    return true;
  }

  List<String> autoSuggest(String prefix) {
    TrieNode node = root;

    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];

      if (!node.child.containsKey(char)) {
        return [];
      }

      node = node.child[char]!;
    }

    return _getWords(node, prefix);
  }

  List<String> _getWords(TrieNode node, String word) {
    List<String> result = [];

    if (node.isEnd) {
      result.add(word);
    }

    node.child.forEach((char, childNode) {
      result.addAll(_getWords(childNode, word + char));
    });

    return result;
  }
}

void main() {
  Trie trie = Trie();

  trie.insert("apple");
  trie.insert("app");
  trie.insert("application");
  trie.insert("appetite");
  trie.insert("banana");
  trie.insert("band");
  trie.insert("bandana");
  trie.insert("grape");

  print(trie.autoSuggest('app'));
}
