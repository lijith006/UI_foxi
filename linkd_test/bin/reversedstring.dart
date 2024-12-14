// void main() {
//   String data = "Name";
//   List<String> array = data.split('').toList();
//   List<String> reversed = [];
//   reversedString(array, reversed);
//   print(reversed);
// }

// reversedString(List<String> array, List<String> reversed) {
//   return helper(array, reversed, array.length - 1);
// }

// helper(List<String> array, List<String> reversed, int m) {
//   if (m >= 0) {
//     reversed.add(array[m]);
//     helper(array, reversed, m - 1);
//   }
// }

// void main() {
//   String data = 'Name';
//   List<String> array = data.split('').toList();
//   List<String> reversed = [];
//   reversedString(array, reversed);
//   print(reversed);
// }

// reversedString(List<String> array, List<String> reversed) {
//   return helper(array, reversed, array.length - 1);
// }

// helper(List<String> array, List<String> reversed, int m) {
//   if (m >= 0) {
//     reversed.add(array[m]);
//     helper(array, reversed, m - 1);
//   }
// }

void main() {
  List<int> data = [1, 2, 3];
  List<int> reversed = [];
  List<int> result = reverse(data, reversed, data.length - 1);

  print(result);
}

reverse(List<int> data, List<int> reversed, int m) {
  if (m >= 0) {
    reversed.add(data[m]);
    reverse(data, reversed, m - 1);
  }
  return reversed;
}
