// int binarySearch(List<int> data, int target) {
//   int left = 0;
//   int right = data.length - 1;
//   while (left <= right) {
//     int mid = (left + right) ~/ 2;
//     if (data[mid] == target) {
//       return mid;
//     } else if (data[mid] < target) {
//       left = mid + 1;
//     } else {
//       right = mid - 1;
//     }
//   }
//   return -1;
// }

// void main(List<String> arguments) {
//   List<int> data = [1, 5, 6, 8, 9, 10, 20, 28, 26, 50, 60];
//   int target = 50;
//   int result = binarySearch(data, target);
//   if (result != -1) {
//     print('The target $target is found in the position ${result + 1}');
//   } else {
//     print('The target is not found');
//   }
// }

void main() {
  List<int> data = [1, 2, 5, 6, 9, 11, 15, 16, 22, 26, 35];
  int target = 2;
  int result = binerysearch(data, target);
  if (result != -1) {
    print('The target $target is in the position ${result + 1}');
  } else {
    print('not found');
  }
}

binerysearch(List<int> data, int target) {
  int left = 0;
  int right = data.length - 1;
  while (left <= right) {
    int mid = (left + right ~/ 2);
    if (data[mid] == target) {
      return mid;
    } else if (target > data[mid]) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}
