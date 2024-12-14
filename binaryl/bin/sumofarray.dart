void main() {
  List<int> data = [1, 5, 9, 8, 6, 5, 7];
  int result = sumofArray(data, 0);
  print(result);
}

int sumofArray(List<int> data, int index) {
  if (index == data.length) {
    return 0;
  }
  return data[index] + sumofArray(data, index + 1);
}
