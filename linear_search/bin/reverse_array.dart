// // void main() {
// //   List<int> data = [1, 2, 3, 4, 5, 6, 7, 8];
// //   List<int> reversed = [];
// //   reversed = reversedarray(data, reversed, data.length - 1);
// //   print(reversed);
// // }

// // reversedarray(List<int> data, List<int> reversed, int m) {
// //   if (m >= 0) {
// //     reversed.add(data[m]);
// //     reversedarray(data, reversed, m - 1);
// //   }
// //   return reversed;
// // }
// void main() {
//   List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   List<int> reversed = [];
//   reversed = makereverse(data, reversed, data.length - 1);
//   print(reversed);
// }

// makereverse(List<int> data, List<int> reversed, int m) {
//   if (m >= 0) {
//     reversed.add(data[m]);
//     makereverse(data, reversed, m - 1);
//   }
//   return reversed;
// }
void main() {
  String name = 'Lijith';
  List<String> data = name.split('').toList();
  List<String> reversed = [];
  reversed = makereverse(data, reversed, data.length - 1);
  print(reversed);
}

makereverse(List<String> data, List<String> reversed, int m) {
  if (m >= 0) {
    reversed.add(data[m]);
    makereverse(data, reversed, m - 1);
  }
  return reversed;
}
