void main() {
  List<int> list1 = [10, 2, 5, 3, 1, 8];
  print(insertionSort(list1));
}

insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    int j = i - 1;
    int temp = arr[i];

    while (j >= 0 && temp < arr[j]) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = temp;
  }
  return arr;
}
