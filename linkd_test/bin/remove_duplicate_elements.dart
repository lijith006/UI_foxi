// void main() {
//   List<int> array = [5, 6, 8, 8, 9, 6, 6, 9, 20, 57, 59, 60, 60];
//   List<int> uniqueElements = removeDuplicate(array);
//   print(uniqueElements);
// }

// List<int> removeDuplicate(List<int> array) {
//   Set<int> unique = {};
//   for (int elements in array) {
//     unique.add(elements);
//   }
//   return unique.toList();
// }

void main() {
  List<int> array = [10, 1, 10, 44, 44, 34, 65, 77, 77, 90];
  List<int> uniqueElements = deleteDuplicate(array);
  print(uniqueElements);
}

List<int> deleteDuplicate(List<int> array) {
  Set<int> unique = {};
  for (int element in array) {
    unique.add(element);
  }
  return unique.toList();
}
