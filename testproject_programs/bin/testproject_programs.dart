// void main(List<String> arguments) {
//   print('Enter two numbers:');
//   int? num1 = int.parse(stdin.readLineSync()!);
//   double? num2 = double.parse(stdin.readLineSync()!);
//   double sum = num1 + num2;
//   print('Sum is:$sum');
// }

// void main() {
//   print('Enter the limit:');
//   int? limit = int.parse(stdin.readLineSync()!);
//   var sum = 0;
//   for (var i = 1; i <= limit; i++) {
//     if (i % 2 == 1) {
//       sum = sum + i;
//     }
//   }
//   print('Sum of odd is:$sum');
// }

// void main() {
//   var i, temp;
//   List<int> array1 = [];
//   List<int> array2 = [];
//   print('Enter the array limit:');
//   int limit = int.parse(stdin.readLineSync()!);
//   print('Enter the elements in array 1');
//   for (var i = 0; i <= limit; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   print('Enter the elements in array 2');
//   for (var i = 0; i <= limit; i++) {
//     array2.add(int.parse(stdin.readLineSync()!));
//   }
//   print('After swapping');
//   for (var i = 0; i <= limit; i++) {
//     temp = array1[i];
//     array1[i] = array2[i];
//     array2[i] = temp;
//   }
//   print('swapped');
//   for (var i = 0; i <= limit; i++) {
//     print(array1[i]);
//   }
//   for (var i = 0; i <= limit; i++) {
//     print(array2[i]);
//   }
// }

// void main() {
//   List<int> array1 = [];
//   int count = 0;
//   print('Enter the size');
//   int size = int.parse(stdin.readLineSync()!);
//   print('Enter the numbers:');
//   for (var i = 0; i < size; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   for (var i = 0; i < size; i++) {
//     if (array1[i] % 2 == 0) {
//       count++;
//     }
//   }
//   print('number of even nums:$count');
// }

// void main() {
//   List<int> array1 = [];
//   var temp;
//   print('Enter the size');
//   int size = int.parse(stdin.readLineSync()!);
//   print('Enter the numbers:');
//   for (var i = 0; i < size; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   print('To desc');
//   for (var i = 0; i < size; i++) {
//     for (var j = i + 1; j < size; j++) {
//       if (array1[i] < array1[j]) {
//         temp = array1[i];
//         array1[i] = array1[j];
//         array1[j] = temp;
//       }
//     }
//   }
//   print('answr');

//   print('array:$array1\n');
// }

// void main() {
//   var flag = 0;
//   print('Enter a string:');
//   String? str = stdin.readLineSync();
//   str = str?.trim();
//   for (var i = 0, j = str!.length - 1; i < (str.length) / 2; i++, j--) {
//     if (str[i] == str[j]) {
//       continue;
//     } else {
//       flag = 1;
//       break;
//     }
//   }
//   if (flag == 0) {
//     print('String is Palindrome');
//   } else {
//     print('String is not a palindrome');
//   }
// }

// void main() {
//   var flag = 0;
//   print('Enter a string:');
//   String? str = stdin.readLineSync();
//   str = str?.trim();
//   for (var i = 0, j = str!.length - 1; i < (str.length) / 2; i++, j--) {
//     if (str[i] == str[j]) {
//       continue;
//     } else {
//       flag = 1;
//       break;
//     }
//   }
//   if (flag == 1) {
//     print('not palindrome');
//   } else {
//     print('Palindrome');
//   }
// }

// void main() {
//   var flag = 0;
//   print('Enter a number:');
//   int num = int.parse(stdin.readLineSync()!);
//   if (num < 2) {
//     print('No is not prime');
//   } else {
//     for (var i = 2; i <= num / 2; i++) {
//       if (num % i == 0) {
//         flag = 1;
//         break;
//       }
//     }
//     if (flag == 1) {
//       print('Value is not prime');
//     } else {
//       print('prime');
//     }
//   }
// }

// void main() {
//   List<int> array1 = [];
//   var temp;
//   print('Enter the limit:');
//   int limit = int.parse(stdin.readLineSync()!);
//   print('Enter the array numbers:');
//   for (var i = 0; i < limit; i++) {
//     array1.add(int.parse(stdin.readLineSync()!));
//   }
//   for (var i = 0; i < limit; i++) {
//     for (var j = i + 1; j < limit; j++) {
//       if (array1[i] > array1[j]) {
//         temp = array1[i];
//         array1[i] = array1[j];
//         array1[j] = temp;
//       }
//     }
//   }
//   print('sorted: $array1');
//   print('Second largest is :${array1[array1.length - 2]}');
// }

// void main() {
//   List<int> list1 = [10, 20];
//   List<int> list2 = [1, 2, 3];
//   List<int> total = [...list1, ...list2];
//   print(total);
// }

// for in
// void main(List<String> args) {
//   List<int> list1 = [10, 20, 30, 50];
//   for (var i in list1) {
//     print(i);
//   }
// }

// void main(List<String> args) {
//   List<int> list1 = [1, 2, 5, 8, 9, 7, 5, 9];
//   for (var i in list1) {
//     print(i);
//   }
// }
// for each

// void main() {
//   final names = ['alice', 'lincon', 'roni'];
//   names.forEach((element) {
//     print(element.toUpperCase());
//   });
// }
// }
// void main() {
//   final objects = ['salman', 'hey'];
//   objects.forEach((element) {
//     print(element.toUpperCase());
//   });
// }

// void main() {
//   int i = 0;
//   while (i < 10) {
//     print(i);
//     i++;
//   }
// }
// void main(List<String> args) {
//   int i = 1;
//   do {
//     if (i % 2 != 0) {
//       print(i);
//     }
//     i++;
//   } while (i <= 10);
// }

// Then

// void main(List<String> args) {
//   var fun = fetchData();
//   fun.then((value) {
//     var result = value - 10;
//     print(result);
//   });
// }

// Future<int> fetchData() async {
//   await Future.delayed(Duration(seconds: 3));
//   return 50;
// }

// void main(List<String> args) {
//   List<int> list1 = [1, 11, 13, 9, 5, 8, 20, 10, 11, 9];
//   List<int> answer = [];
//   for (int i = 0; i < list1.length; i++) {
//     int flag = 0;
//     for (int j = 2; j < list1[i] / 2; j++) {
//       if (list1[i] % j == 0) {
//         flag++;
//         break;
//       }
//     }
//     if (flag == 0 && list1[i] > 1) {
//       answer.add(list1[i]);
//     }
//   }
//   print(answer);
// }

// void main(List<String> args) {
//   List<int> list1 = [1, 2, 2, 10, 10, 5, 9, 7, 80, 80];
//   List<int> answer = [];
//   for (int i = 0; i < list1.length; i++) {
//     int flag = 0;
//     for (int j = 0; j < list1.length; j++) {
//       if (list1[i] == list1[j]) {
//         flag++;
//       }
//     }
//     if (flag == 1) {
//       answer.add(list1[i]);
//     }
//   }
//   print(answer);
// }

// void main(List<String> args) {
//   List<int> list1 = [1, 3, 5, 9, 11, 8, 4, 2, 13, 13, 7, 17, 7];
//   // var answr = [];
//   int count = 0;
//   for (int i = 0; i < list1.length; i++) {
//     // ignore: dead_code
//     for (int j = 2; j < list1[i] / 2; j++) {
//       if (list1[i] % j != 0) {
//         count++;
//         break;
//       }
//     }
//   }
//   print(count);
// }
//POSITIONAL
// void parameter(int a, int b) {
//   print('number one is $a and two is $b');
// }

// void main(List<String> args) {
//   parameter(10, 200);
// }

//NAMED
// void parameter({String? name, int? age}) {
//   print('The name is $name and age is $age');
// }

// void main(List<String> args) {
//   parameter(age: 25, name: 'rooob');
// }

//CONSTRUCTOR

//DEFAULT
// class Sample {
//   Sample() {
//     print('This is Default constructor');
//   }
// }
//PARAMETERISED

// class Sample {
//   Sample(int a, int b) {
//     print(a + b);
//   }
// }
//NAMED
// class Sample {
//   Sample.constructor1(int a, int b) {
//     print(a + b);
//   }

//   Sample.constructor2(a) {
//     print('The COnstructor two is $a');
//   }
// }

// void main(List<String> args) {
//   // Sample samp = Sample(2, 3);
//   // Sample obj = Sample();
//   final obj = Sample.constructor1(1, 5);
//   final obj1 = Sample.constructor2(10);
// }
//LARGEST
// void main(List<String> args) {
//   List<int> list1 = [10, 20, 5, 6, 8, 30];
//   //List<int> list2 = [];
//   var temp = 0;
//   for (int i = 0; i < list1.length; i++) {
//     for (int j = i + 1; j < list1.length; j++) {
//       if (list1[i] < list1[j]) {
//         temp = list1[i];
//         list1[i] = list1[j];
//         list1[j] = temp;
//       }
//     }
//   }
//   print(list1[0]);
// }
//DELETE DUPLICATE
// void main(List<String> args) {
//   List<int> list1 = [10, 10, 20, 20, 20, 100, 1, 3, 5];
//   List<int> list2 = [];
//   for (int i = 0; i < list1.length; i++) {
//     var flag = 0;
//     for (int j = i + 1; j < list1.length; j++) {
//       if (list1[i] == list1[j]) {
//         flag = 1;
//         break;
//       }
//     }
//     if (flag == 0) {
//       list2.add(list1[i]);
//     }
//   }
//   print(list2);
// }
//UNIQUE
// void main(List<String> args) {
//   List<int> list1 = [10, 20, 30, 30, 10, 1, 8, 9, 6];
//   List<int> list2 = [];
//   for (int i = 0; i < list1.length; i++) {
//     var flag = 0;
//     for (int j = 0; j < list1.length; j++) {
//       if (list1[i] == list1[j]) {
//         flag++;
//       }
//     }
//     if (flag == 1) {
//       list2.add(list1[i]);
//     }
//   }
//   print(list2);
// }

// void main(List<String> args) {
//   List<int> list1 = [2, 3, 5, 11, 13, 9];
//   //List<int> list2 = [];
//   int count = 0;
//   for (int i = 0; i < list1.length; i++) {
//     var isPrime = true;
//     if (list1[i] <= 1) {
//       isPrime = false;
//     } else {
//       for (int j = 2; j <= list1[i] / 2; j++) {
//         if (list1[i] % j == 0) {
//           isPrime = false;
//           break;
//         }
//       }
//     }
//     if (isPrime) {
//       count++;
//     }
//   }
//   print(count);
// }
// // print(list2);

// Stream<int> name() async* {
//   for (int i = 0; i <= 5; i++) {
//     Future.delayed(Duration(seconds: 2));
//     yield 42;
//   }
// }

// void main(List<String> args) {
//   name();
// }

class Person {
  String? walk;
  String? talk;
  String? run;
}

void main() {
  Person obj = Person();
  obj
    ..walk = 'walking'
    ..talk = 'talking'
    ..run = 'running';
  print(obj.run);
}
