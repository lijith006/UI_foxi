// List<int> reversedarray(List<int> list1) {
//   int left = 0;
//   int right = list1.length - 1;
//   while (left < right) {
//     int temp = list1[left];
//     list1[left] = list1[right];
//     list1[right] = temp;
//     left++;
//     right--;
//   }
//   return list1;
// }

// void main() {
//   List<int> list1 = [10, 12, 15, 22, 18, 20, 30, 40, 50, 60];
//   print(reversedarray(list1));
// }
void main() {
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7, 8];
  print(reverse(list1));
}

List<int> reverse(List<int> list1) {
  int left = 0;
  int right = list1.length - 1;
  while (left < right) {
    int temp = list1[left];
    list1[left] = list1[right];
    list1[right] = temp;
    left++;
    right--;
  }

  return list1;
}
