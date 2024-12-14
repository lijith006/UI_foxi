import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:sqflite/sqflite.dart';

// Primary Key

// CREATE TABLE users(user_id INTEGER PRIMARY KEY,
// name TEXT
// );

// Foreign key

// CREATE TABLE orders(order_id INTEGER PRIMARY KEY,
//  user id INTEGER,FOREIGN KEY(user id) REFERENCES users(user id);
// );

//UNique constraints
// CREATE TABLE products(product id INTEGER PRIMARY KEY,name TEXT UNIQUE);

//*-**-**-*-*-*-*--*-*-*-*-*-*-*-*-**-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-

// import 'package:sqflite/sqflite.dart';

// late Database db;

// Future<void> initializeDatabase() async {
//   try {
//     db = await openDatabase(
//       'students.db',
//       version: 2,
//       onCreate: (Database db, int version) async {
//         await db.execute(
//             'CREATE TABLE students(id INTEGER PRIMERY KEY,name TEXT,contact INTEGER,place TEXT) ');
//       },
//       onUpgrade: (db, oldVersion, newVersion) {
//         if (oldVersion < 2) {
//           db.execute('ALTER TABLE students ADD COLUMN parents TEXT');
//           print('Database updated');
//         }
//       },
//     );
//   } catch (e) {
//     print('ERROR initializing database');
//   }
// }

// Future<void> addStudent(StudentModel value) async {
//   try {
//     await db.rawInsert(
//         'INSERT into students(name,contact,place,parents)VALUES(?,?,?,?)',
//         [value.name, value.contact, value.place, value.parents]);
//   } catch (e) {
//     print('ERROR');
//   }
// }

// Future<void> getAllStudent() async {
//   try {
//     final List<Map<String, Object?>> val =
//         await db.rawQuery('SELECT * FROM students');
//     print('Fetched students data');
//     for (var map in val) {
//       final student = StudenModel.fromMap(map);
//       studentListNotifier.value.add(student);
//     }
//     StudentListNotifiers.notifyListeners();
//   } catch (e) {
//     print('Error');
//   }
// }

// Future<void> getAllStudents() async {
//   try {
//     final List<Map<String, Object?>> value =
//         await db.rawQuery('SELECT * FROM students');
//     print('Fetched students data');
//   } catch (e) {
//     print('Error');
//   }
// }

//----------------------------
// import 'package:sqflite/sqflite.dart';

// late Database db;

// Future<void> initializeDatabase() async {
//   try {
//     db = await openDatabase(
//       'student.db',
//       version: 2,
//       onCreate: (Database db, int version) async {
//         await db.execute(
//             'CREATE TABLE students(id INTEGER PRIMERYKEY,name TEXT,contact INTEGER,place TEXT)');
//         print('Database created');
//       },
//       onUpgrade: (db, oldVersion, newVersion) {
//         db.execute('ALTER TABLE students ADD COLUMN parents TEXT');
//         print('Database updated');
//       },
//     );
//   } catch (e) {
//     print('ERROR');
//   }
// }

// Future<void> getStudentsData() async {
//   try {
//     final List<Map<String, Object?>> value =
//         await db.rawQuery('SELECT * FROM students');
//     print('Fetched all datas');
//     for (var map in value) {
//       final student = StudentModel.fromMap(map);
//       studentListNotifiers.value.add(student);
//     }
//     StudentListNotifiers.notifyListeners();
//   } catch (e) {
//     print('Error');
//   }
// }

// Future<void> addStudent(StudentModel value) async {
//   try {
//     await db.rawInsert(
//         'INSERT INTO students(name,contact,place,parents)VALUES(?,?,?,?)',
//         [value.name, value.contact, value.parents, value.place]);
//     await getStudentsData();
//   } catch (e) {
//     print('Error');
//   }
// }

// Future<void> deleteStudents(int id) async {
//   await db.rawDelete('DELETE FROM students WHERE id=?', [id]);
//   await getStudentsData();
// }

// Future<List<Map<String, Object?>>> updateStudent(
//     StudentModel value, int id) async {
//   final result = await db.rawQuery(
//       'UPDATE students SET name=?,contact=?,place=?,parents=?,WHERE id=?',
//       [value.name, value.contact, value.place, value.parents]);
//   return result;
// }
//-*******************************************************************************************************************************************************
//HIVE DTABASE

// @HiveType(typeId: 0)
// class Student {
//   @HiveField(0)
//   String? name;
//   @HiveField(1)
//   String? place;
//   @HiveField(2)
//   String? age;

//   Student(this.name, this.place, this.age);
// }
//***************************************************************************
// */

//API

//****** */
// Future<List<Model>> get() async {
//   final url = '';
//   final response = await http
//       .get(Uri.parse(url), header: {'Content-Type': 'application/json'});

//   if (response.statuscode == 200) {
//     final jsonresponse = jsonDecode(response.body) as Map<String, dynamic>;
//     final result = jsonresponse['item'] as List;

//     return result.map((data) => Model.fromjson(data)).toList();
//   } else {
//     throw Exception('failed ${response.statuscode}');
//   }
// }

// Future<Model> addTodo(String name, String des) async {
//   final url = '';
//   final response = await http.post(Uri.parse(url),
//       header: {'content-type': 'application/json'},
//       body: jsonEncode({"name": name, "des": des}));

//   if (response.statuscode) {
//     return Model.Fromjson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed {$response.statuscode}');
//   }
// }

// Future<void> edit(Model todo) async {
//   final url = '';
//   final response = await http.put(Uri.parse(url),
//       header: {'Content-Type': 'application/json'},
//       body: json.encode(todo.toJson));

//   if (response.statuscode != 200) {
//     throw Exception('failed ${response.statuscode}');
//   }
// }

// Future<void> delete(String id) async {
//   final url = '';
//   final reponse = await http
//       .delete(Uri.parse(url), header: {'content-Type': 'application/json'});

//   if (reponse.statuscode != 200) {
//     throw Exception('Failed ${reponse.statuscode}');
//   }
// }

// Future<void> patch(int id, Map<String, dynamic> updates) async {
//   final url = '';
//   final response = await http.patch(Uri.parse(url),
//       header: {'content-type': 'applicatioon/json'},
//       bode: json.encode(updates));

//   if (response.statuscode != 200) {
//     throw Exception('Failed ${response.statuscode}');
//   }
// }

//************************************************************************ */
//***************************************************************************

//Api
//get

//************************************************************** */


 