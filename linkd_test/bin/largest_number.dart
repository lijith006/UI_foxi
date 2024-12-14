void main() {
  List<int> array = [10, 5, 4, 8, 2, 6, 66, 32, 22];
  int result = largestNum(array);
  print(result);
}

largestNum(List<int> array) {
  int max = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }
  return max;
}
