int linearSearch(List<int> data, int target) {
  for (int i = 0; i < data.length; i++) {
    if (data[i] == target) {
      return i;
    }
  }
  return -1;
}

void main(List<String> arguments) {
  List<int> data = [130, 20, 30, 55, 69, 77, 23, 10, 5];
  int target = 10;
  int result = linearSearch(data, target);
  if (result == -1) {
    print('Target number $target  is not found');
  } else {
    print('Target number $target is found in the position ${result + 1}');
  }
}
