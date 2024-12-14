// void main() {
//   List<int> array = [
//     5,
//     5,
//     5,
//     5,
//     5,
//   ];
//   int data = findSum(array);
//   print('The result is $data');
// }

// int findSum(List<int> array) {
//   return helper(array, array.length - 1);
// }

// int helper(List<int> array, int m) {
//   if (m < 0) {
//     return 0;
//   } else {
//     return array[m] + helper(array, m - 1);
//   }
// }

void main() {
  List<int> array = [5, 10, 2, 5, 6, 5, 8];
  int data = findsum(array);
  print('The result is $data');
}

int findsum(List<int> array) {
  return helper(array, array.length - 1);
}

int helper(array, m) {
  if (m < 0) {
    return 0;
  } else {
    return array[m] + helper(array, m - 1);
  }
}
