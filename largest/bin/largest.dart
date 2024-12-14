void main() {
  List<int> list1 = [5, 2, 3, 4, 6];
  int? temp;
  for (int i = 0; i <= 5; i++) {
    for (int j = 1; j <= 5; j++) {
      if (list1[i] < list1[j]) {
        temp = list1[i];
        list1[i] = list1[j];
        list1[j] = temp;
      }
    }
  }
  for (int i = 0; i < 5; i++) {
    print(list1[1]);
  }
}
