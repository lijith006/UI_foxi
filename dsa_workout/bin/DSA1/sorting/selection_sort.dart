void main() {
  List<int> list1 = [10, 2, 5, 3, 1, 8];
  print(selectionsort(list1));
}

selectionsort(List<int> arr1) {
  int n = arr1.length;
  for (int i = 0; i < n; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (arr1[j] < arr1[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      int temp = arr1[i];
      arr1[i] = arr1[minIndex];
      arr1[minIndex] = temp;
    }
  }
  return arr1;
}
