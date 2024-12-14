// void main() {
//   String name = 'malayalam';
//   if (isPalindrome(name)) {
//     print('word is palindrome');
//   } else {
//     print('Not palindrome');
//   }
// }

// bool isPalindrome(String word) {
//   int start = 0;
//   int end = word.length - 1;
//   while (start < end) {
//     if (word[start] != word[end]) {
//       return false;
//     }
//     start++;
//     end--;
//   }
//   return true;
// }

void main() {
  List<String> fruits = ['banana', 'Apple', 'orange'];

  fruits.forEach((fruits) {
    print(fruits);
  });
}
