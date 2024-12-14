List<int> reversedArray(List<int> array) {
  int left = 0;
  int right = array.length - 1;
  while (left < right) {
    int temp = array[left];
    array[left] = array[right];
    array[right] = temp;
    left++;
    right--;
  }
  return array;
}

void main() {
  List<int> array = [2, 3, 6, 5, 4, 7, 69];

  print(reversedArray(array));
}
