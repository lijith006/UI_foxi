void main() {
  String data = "HelloWorld";
  int result = countVowels(data);
  print(result);
}

countVowels(String data) {
  int count = 0;
  String vowels = "aeiou";

  for (int i = 0; i < data.length; i++) {
    if (vowels.contains(data[i])) {
      count++;
    }
  }
  return count;
}
