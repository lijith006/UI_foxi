void main() {
  List<int> array = [5, 3, 9, 1, 7, 2, 8, 6, 4];
  List<int> result = addEven(array);
  print(result);
}

List<int> addEven(List<int> array) {
  List<int> even = [];
  for (int num in array) {
    if (num % 2 == 0) {
      even.add(num);
    }
  }
  return even;
}
