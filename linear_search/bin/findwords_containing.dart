void main() {
  List<int> array;
  List<String> words = ['laatcodee'];
  String x = 'e';
  array = findword(words, x);
  print(array);
}

findword(List<String> words, String x) {
  List<int> result = [];
  var l = words.length;
  for (int i = 0; i < l; i++) {
    if (words[i].contains(x)) {
      result.add(i);
    }
  }
  return result;
}
