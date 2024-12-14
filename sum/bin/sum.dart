import 'dart:io';

import 'package:test/test.dart';

// void main() {
//   print('Enter two numbers:');
//   String? input1 = stdin.readLineSync();
//   String? input2 = stdin.readLineSync();
//   double num1 = double.parse(input1!);
//   double num2 = double.parse(input2!);
//   var sum = num1 + num2;
//   print('Sum is: $sum');
// }

// void main() {
//   print('Enter the principal amount:');
//   int P = int.parse(stdin.readLineSync()!);

//   print('Enter the Interest rate:');
//   double R = double.parse(stdin.readLineSync()!);

//   print('Enter the Number of Years:');
//   double Y = double.parse(stdin.readLineSync()!);

//   double SI = (P * R * Y) / 100;
//   print(SI);
// }

// void main() {
//   print('Enter the marks:');
//   double mark = double.parse(stdin.readLineSync()!);
//   if (mark < 50 && mark >= 0) {
//     print('Failed');
//   } else if (mark >= 50 && mark <= 100) {
//     print('Passed');
//   } else {
//     print('Invalid Entry');
//   }
// }

// void main() {
//   print('Enter the Marks:');
//   double totalMark = double.parse(stdin.readLineSync()!);
//   if (totalMark <= 100 && totalMark >= 90) {
//     print('A grade');
//   } else if (totalMark <= 89 && totalMark >= 80) {
//     print('B grade');
//   } else if (totalMark <= 79 && totalMark >= 70) {
//     print('C grade');
//   } else if (totalMark <= 69 && totalMark >= 60) {
//     print('D grade');
//   } else if (totalMark <= 59 && totalMark >= 50) {
//     print('E grade');
//   } else if (totalMark <= 49 && totalMark >= 0) {
//     print('Failed');
//   } else {
//     print('Invalid Entry');
//   }
// }

// void main() {
//   print('Enter number:');
//   var day = int.parse(stdin.readLineSync()!);
//   switch (day) {
//     case 1:
//       print('Sunday');
//       break;
//     case 2:
//       print('Monday');
//       break;
//     case 3:
//       print('Tuesday');
//       break;
//     case 4:
//       print('Wednesday');
//       break;
//     case 5:
//       print('Thursday');
//       break;
//     case 6:
//       print('Friday');
//       break;
//     case 7:
//       print('Saturday');
//       break;
//     default:
//       print('Invalid');
//   }
// }

// void main() {
//   print('Enter the limit:');
//   int limit = int.parse(stdin.readLineSync()!);

//   int i;
//   int sum = 0;
//   for (i = 1; i <= limit; i++) {
//     if (i % 2 != 0) {
//       sum = sum + i;
//     }
//   }
//   print('Sum of odd numbers:$sum');
// }

// void main() {
//   var i, j;
//   for (i = 1; i <= 5; i++) {
//     for (j = 1; j <= i; j++) {
//       print("$j");
//     }
//     print("\n");
//   }
// }

// void main() {
//   List<int> array1 = [];
//   List<int> array2 = [];

//   print('Enter the size of array:');
//   int size = int.parse(stdin.readLineSync()!);
//   print('Enter the array elements:');
//   for (int i = 0; i < size; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   // print('Enter the size of second array:');
//   // int size2 = int.parse(stdin.readLineSync()!);
//   print('Enter the second array elements:');
//   for (int i = 0; i < size; i++) {
//     array2.add(int.parse(stdin.readLineSync()!));
//   }
// //printing array1 and array2 before swapping
//   print('Array1 and Array2 before swapping');
//   print('Array 1 :');
//   for (int i = 0; i < size; i++) {
//     print(array1[i]);
//   }

//   print('Array 2 :');
//   for (int i = 0; i < size; i++) {
//     print(array2[i]);
//   }
//   for (int i = 0; i < size; i++) {
//     var temp = array1[i];
//     array1[i] = array2[i];
//     array2[i] = temp;
//   }

// //After swapping

//   print('Array 1 after swapping:');
//   for (int i = 0; i < size; i++) {
//     print(array1[i]);
//   }

//   print('Array 2 after swapping:');
//   for (int i = 0; i < size; i++) {
//     print(array2[i]);
//   }
// }

// void main() {
//   List<int> array1 = [];

//   print('Enter the size of array:');
//   int size = int.parse(stdin.readLineSync()!);
//   print('Enter the array elements:');
//   for (int i = 0; i < size; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   print('Array Elements are:');

//   print(array1);

//   int count = 0;
//   for (int i = 0; i < size; i++) {
//     if (array1[i] % 2 == 0) {
//       count++;
//     }
//   }
//   print(count);
// }

// void main() {
//   List<int> array1 = [];
//   print('Enter the size of array:');
//   int size = int.parse(stdin.readLineSync()!);
//   print('Enter the array elements:');
//   for (int i = 0; i < size; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   print('Sorted array:');
//   for (int i = 0; i < size; i++) {
//     for (int j = i + 1; j < size; j++) {
//       if (array1[i] < array1[j]) {
//         int temp = array1[i];
//         array1[i] = array1[j];
//         array1[j] = temp;
//       }
//     }
//   }
//   for (int i = 0; i < size; i++) {
//     print(array1[i]);
//   }
// }

// void main() {
//   int flag = 0;
//   print('Enter the string');
//   String? st = stdin.readLineSync();
//   st = st?.trim();
//   for (int i = 0, j = st!.length - 1; i < (st.length) / 2; i++, j--) {
//     if (st[i] == st[j]) {
//       continue;
//     } else {
//       flag = 1;
//       break;
//     }
//   }
//   if (flag == 0) {
//     print('String is pallindrome');
//   } else {
//     print('String is not pallindrome');
//   }
// }

// List<int> getArray(int size) {
//   List<int> array1 = [];
//   print('Enter the array elements:');
//   for (int i = 0; i < size; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   return array1;
// }

// void displayArray(List<int> myArray) {
//   print('Array elements are:');
//   for (var x in myArray) {
//     print("$x");
//   }
// }

// void main() {
//   List<int> myArray = [];
//   print('Enter the array size:');
//   int size = int.parse(stdin.readLineSync()!);
//   myArray = getArray(size);
//   displayArray(myArray);
// }

// void main() {
//   int flag = 0;
//   print('Enter a number:');
//   int num = int.parse(stdin.readLineSync()!);
//   if (num < 2) {
//     print('Number is not prime');
//   } else {
//     for (int i = 2; i <= num / 2; i++) {
//       if (num % i == 0) {
//         flag = 1;
//         break;
//       }
//     }

//     if (flag == 1) {
//       print('Number is not prime');
//     } else {
//       print('Number is prime');
//     }
//   }
// }

// class Maths {
//   double addition(double a, double b) {
//     return a + b;
//   }

//   double substraction(double a, double b) {
//     return a - b;
//   }

//   double division(double a, double b) {
//     return a / b;
//   }

//   double multiplication(double a, double b) {
//     return a * b;
//   }
// }

// void main() {
//   Maths obj = Maths();
//   double a, b;
//   print("Choose\n 1.Addition\n2.Substraction\n3.Division\n4.Multiplication\n");

//   int choose = int.parse(stdin.readLineSync()!);
//   switch (choose) {
//     case 1:
//       print('Enter two numbers:');
//       double a = double.parse(stdin.readLineSync()!);
//       double b = double.parse(stdin.readLineSync()!);
//       print('$a + $b= ${obj.addition(a, b)}');
//       break;

//     case 2:
//       print('Entertwo numbers:');
//       double a = double.parse(stdin.readLineSync()!);
//       double b = double.parse(stdin.readLineSync()!);
//       print('$a - $b= ${obj.substraction(a, b)}');

//       break;

//     case 3:
//       print('Entertwo numbers:');
//       double a = double.parse(stdin.readLineSync()!);
//       double b = double.parse(stdin.readLineSync()!);
//       print('$a / $b= ${obj.division(a, b)}');
//       break;

//     case 4:
//       print('Entertwo numbers:');
//       double a = double.parse(stdin.readLineSync()!);
//       double b = double.parse(stdin.readLineSync()!);
//       print('$a * $b= ${obj.multiplication(a, b)}');
//       break;

//     default:
//       print('Enter a valid number');
//   }
// }

// void main() {
//   int written, lab, assignment;
//   print("Enter written test score");
//   written = int.parse(stdin.readLineSync()!);
//   print("Enter lab exam score");
//   lab = int.parse(stdin.readLineSync()!);
//   print("Enter assignment exam score");
//   assignment = int.parse(stdin.readLineSync()!);

//   double overallgrade =
//       (written * 70 / 100) + (lab * 20 / 100) + (assignment * 10 / 100);
//   print("Overall grade:$overallgrade");
// }

// void main() {
//   int income;
//   print("Enter your annual income");
//   income = int.parse(stdin.readLineSync()!);
//   if (income <= 250000) {
//     print("No tax");
//   } else if (income <= 500000) {
//     print("Income tax amount : ${income * 0.05}");
//   } else if (income <= 1000000) {
//     print("Income tax amount : ${income * 0.2}");
//   } else if (income <= 5000000) {
//     print("Income tax amount : ${income * 0.3}");
//   }
// }

// void main() {
//   int k = 1;
//   for (var i = 1; i < 5; i++) {
//     for (var j = 1; j < i; j++) {
//       print("$k");
//       k++;
//     }
//     print('\n');
//   }
// }

// void main() {
//   List<int> array = [], sumarray = [];
//   print("Enter array limit");
//   int limit = int.parse(stdin.readLineSync()!);
//   print("Enter the elements of the array");
//   for (int i = 0; i < limit; i++) {
//     array.add(int.parse(stdin.readLineSync()!));
//   }
//   for (int i = 0; i < limit - 1; i++) {
//     sumarray.add(array[i] * array[i + 1]);
//   }
//   print('output');
//   for (var x in sumarray) {
//     stdout.write("$x ");
//   }

//   print("");
// }

// void main() {
//   List<List<int>> array1 = [];
//   List<List<int>> array2 = [];
//   List<List<int>> sum = [];
//   print('Enter size of the array');
//   int size = int.parse(stdin.readLineSync()!);
//   print("Enter values of array 1");
//   array1 = getArray(size);
//   print("Enter values of array 2");
//   array2 = getArray(size);
//   sum = addArray(array1, array2, size);
//   displayArray(sum, size);
// }

// List<List<int>> getArray(size) {
//   List<List<int>> array = [];
//   List<int> row = [];
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       row.add(int.parse(stdin.readLineSync()!));
//     }
//     array.add(row);
//     row = [];
//   }
//   return array;
// }

// List<List<int>> addArray(
//     List<List<int>> array1, List<List<int>> array2, int size) {
//   List<List<int>> sum = [];
//   List<int> row = [];
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       row.add(array1[i][j] + array2[i][j]);
//     }
//     sum.add(row);
//     row = [];
//   }
//   return sum;
// }

// void displayArray(List<List<int>> sum, int size) {
//   print("Sum of array 1 and array 2");
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       stdout.write("${sum[i][j]} ");
//     }
//     print("");
//   }
// }

// import 'dart:io';

// class twoDArray {
//   List<List<int>> getArray(size) {
//     List<List<int>> array = [];
//     List<int> row = [];
//     print("Enter the array values");
//     for (var i = 0; i < size; i++) {
//       for (var j = 0; j < size; j++) {
//         row.add(int.parse(stdin.readLineSync()!));
//       }
//       array.add(row);
//       row = [];
//     }
//     return array;
//   }

//   void displayArray(List<List<int>> array, int size) {
//     print("Array elements are");
//     for (var i = 0; i < size; i++) {
//       for (var j = 0; j < size; j++) {
//         stdout.write("${array[i][j]} ");
//       }
//       print("");
//     }
//   }
// }

// void main() {
//   List<List<int>> array = [];
//   print('Enter size of the array');
//   int size = int.parse(stdin.readLineSync()!);
//   twoDArray ob = new twoDArray();
//   array = ob.getArray(size);
//   ob.displayArray(array, size);
// }

// void main() {
//   MyClass obj = new MyClass();
//   obj.main();
// }

// class Area {
//   void circle() {
//     print("Enter radius");
//     int radius = int.parse(stdin.readLineSync()!);
//     double area = 3.14 * radius * radius;
//     print("Area of circle : $area");
//   }

//   void square() {
//     print("Enter side length");
//     int side = int.parse(stdin.readLineSync()!);
//     print("Area of square : ${side * side}");
//   }

//   void rectangle() {
//     print("Enter side length");
//     int length = int.parse(stdin.readLineSync()!);
//     print("Enter side bredth");
//     int bredth = int.parse(stdin.readLineSync()!);
//     print("Area of rectangle : ${length * bredth}");
//   }

//   void triangle() {
//     print("Enter base length");
//     int base = int.parse(stdin.readLineSync()!);
//     print("Enter height");
//     int height = int.parse(stdin.readLineSync()!);
//     double area = 0.5 * base * height;
//     print("Area of triangle : $area");
//   }
// }

// class MyClass extends Area {
//   void main() {
//     MyClass obj = new MyClass();
//     print("Enter your choice\n1.Circle\n2.Square\n3.rectangle\n4.triangle");
//     int choice = int.parse(stdin.readLineSync()!);
//     switch (choice) {
//       case 1:
//         {
//           obj.circle();
//         }
//         break;
//       case 2:
//         {
//           obj.square();
//         }
//         break;
//       case 3:
//         {
//           obj.rectangle();
//         }
//         break;
//       case 4:
//         {
//           obj.triangle();
//         }
//         break;
//       default:
//         {
//           print("Enter a valid choice");
//         }
//     }
//   }

//   void circle() {
//     super.circle();
//   }

//   void square() {
//     super.square();
//   }

//   void rectangle() {
//     super.rectangle();
//   }

//   void triangle() {
//     super.triangle();
//   }
// }

// bool returnBool(int value) {
//   if (value % 10 == 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

// void main() {
//   print("Enter a number");
//   int no = int.parse(stdin.readLineSync()!);
//   print(returnBool(no));
// }

// void main() {
//   print("Enter a string");
//   String str = stdin.readLineSync()!;
//   RegExp reg = RegExp(r'\s+');
//   String output = str.replaceAll(reg, ' ');
//   print(output);
// }

// void main() {
//   print("Enter fahrenheit");
//   double f = double.parse(stdin.readLineSync()!);
//   double c = (f - 32) * 5 / 9;
//   print("$f F = $c C");
// }

//

// void main() {
//   var i, j;
//   for (i = 0; i < 5; i++) {
//     for (j = 0; j <= i; j++) {
//       stdout.write("${j + 1} ");
//     }
//     print("");
//   }
// }

// void main() {
//   print('Enter size of the array');
//   int size = int.parse(stdin.readLineSync()!);
//   // var array1 = List.filled(size, List.filled(size, 0));
//   // var array2 = List.filled(size, List.filled(size, 0));
//   List<List<int>> array1 = [];
//   List<List<int>> array2 = [];
//   List<List<int>> sum = [];
//   List<int> row = [];
//   print("Enter array 1 elemnets");
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       row.add(int.parse(stdin.readLineSync()!));
//     }
//     array1.add(row);
//     row = [];
//   }
//   print("Array1");
//   print(array1);
//   print("Enter array 2 elemnets");
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       row.add(int.parse(stdin.readLineSync()!));
//     }
//     array2.add(row);
//     row = [];
//   }
//   print("Array2");
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       stdout.write("${array2[i][j]} ");
//     }
//     print("");
//   }
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       row.add(array1[i][j] + array2[i][j]);
//     }
//     sum.add(row);
//     row = [];
//   }
//   print("sum of two array is");
//   for (var i = 0; i < size; i++) {
//     for (var j = 0; j < size; j++) {
//       stdout.write("${sum[i][j]} ");
//     }
//     print("");
//   }
// }

// void main() {
//   int k = 1;
//   for (var i = 0; i < 4; i++) {
//     for (var j = 0; j <= i; j++) {
//       stdout.write(" $k ");
//       k++;
//     }
//     print("\n");
//   }
// }


