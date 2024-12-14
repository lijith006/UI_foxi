import 'dart:io';

//USING RECURSION
void main() {
  print('Enter a number: ');
  int? number = int.parse(stdin.readLineSync()!);
  multiplication(number, 1, 10);

  // for (int i = 1; i <= 10; i++) {
  //   print('$number x $i = ${number * i} ');
  // }
}

multiplication(int number, int multiplier, int limit) {
  if (multiplier > limit) {
    return;
  }
  print('$number x $multiplier = ${number * multiplier}');
  multiplication(number, multiplier + 1, limit);
}
