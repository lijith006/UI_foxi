// void main() {
//   List<int> array = [10, 20, 2, 33, 35, 38, 58, 9, 7, 11];
//   int position = 5;
//   List<int> result = rotateArray(array, position);
//   print(result);
// }

// List<int> rotateArray(List<int> array, k) {
//   int length = array.length;
//   k = k % length;
//   int left = 0;
//   int right = k - 1;
//   while (left < right) {
//     int temp = array[left];
//     array[left] = array[right];
//     array[right] = temp;
//     left++;
//     right--;
//   }
//   return array;
// }

List<int> rotateArray(List<int> array, k) {
  int length = array.length;
  k = k % length;
  int left = 0;
  int right = k - 1;
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
  List<int> array = [10, 20, 30, 40, 50, 60, 70];
  int position = 4;
  print(rotateArray(array, position));
}
