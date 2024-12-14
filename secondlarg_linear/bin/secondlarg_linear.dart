// int secondlargest(List<int> list1) {
//   int first = list1[0];
//   int second = list1[0];
//   for (int i = 0; i < list1.length; i++) {
//     if (list1[i] > first) {
//       second = first;
//       first = list1[i];
//     } else if (list1[i] > second && list1[i] != first) {
//       second = list1[i];
//     }
//   }
//   return second;
// }

// void main(List<String> arguments) {
//   List<int> list1 = [10, 5, 3, 2, 6, 8, 5, 7, 5, 1, 36];
//   int secondLargest = secondlargest(list1);
//   print('The secondLargest number is $secondLargest');
// }

// int secondlargestlinear(List<int> list1) {
//   int first = list1[0];
//   int second = list1[0];
//   for (int i = 0; i < list1.length; i++) {
//     if (list1[i] > first) {
//       second = first;
//       first = list1[i];
//     } else if (list1[i] > second && list1[i] != first) {
//       second = list1[i];
//     }
//   }
//   return second;
// }
secondlargestlinear(List<int> list1) {
  int first = list1[0];
  int second = list1[0];
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] > first) {
      second = first;
      first = list1[i];
    } else if (list1[i] > second && list1[i] != first) {
      second = list1[i];
    }
  }
  return second;
}

void main() {
  List<int> list1 = [10, 12, 5, 7, 87, 8, 56, 20];
  int secondLargest = secondlargestlinear(list1);
  print('The second largest number is $secondLargest');
}
