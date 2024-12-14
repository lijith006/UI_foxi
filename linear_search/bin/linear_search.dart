// // int linearSearch(List<int> data, int target) {
// //   for (int i = 0; i < data.length; i++) {
// //     if (data[i] == target) {
// //       return i;
// //     }
// //   }
// //   return 0;
// // }

// // void main(List<String> arguments) {
// //   List<int> data = [130, 20, 30, 55, 69, 77, 23, 10, 5, 11];
// //   int target = 1000;
// //   int result = linearSearch(data, target);
// //   if (result == 0) {
// //     print('Target number $target  is not found');
// //   } else {
// //     print('Target number $target is found in the position ${result + 1}');
// //   }
// // }

void main() {
  List<int> data = [10, 20, 30, 40, 50, 60, 70, 88, 100, 200];
  int target = 100;
  int result = linearsearch(data, target);
  print(result);
}

linearsearch(List<int> data, int target) {
  for (int i = 1; i <= data.length; i++) {
    if (data[i] == target) {
      return i + 1;
    }
  }
  return -1;
}
