import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:students_app_provider/models/student_model.dart';

ValueNotifier<List<StudentModel>> studentList = ValueNotifier([]);
late Database _db;
Future<void> initializeDatabase() async {
  _db = await openDatabase(
    'student_db',
    version: 1,
    onCreate: (Database db, version) async {
      await db.execute(
          'CREATE TABLE student (id INTEGER PRIMARY KEY, name TEXT, classname TEXT, guardian TEXT, pnumber TEXT, imagex TEXT)');
    },
  );
  print("Database created successfully.");
}

Future<void> getstudentdata() async {
  final result = await _db.rawQuery("SELECT * FROM student");
  // print('All Students data : ${result}');
  studentList.value.clear();
  for (var map in result) {
    final student = StudentModel.fromMap(map);
    studentList.value.add(student);
  }
  studentList.notifyListeners();
}

Future<void> addstudent(StudentModel value) async {
  await _db.rawInsert(
    'INSERT INTO student(name,classname,guardian,pnumber,imagex) VALUES(?,?,?,?,?)',
    [
      value.name,
      value.classname,
      value.guardian,
      value.pnumber,
      value.imagex,
    ],
  );
  getstudentdata();
}

Future<void> deleteStudent(id) async {
  await _db.delete('student', where: 'id=?', whereArgs: [id]);
  getstudentdata();
}

Future<void> editStudent(
  id,
  name,
  classname,
  guardian,
  pnumber,
  imagex,
) async {
  final dataflow = {
    'name': name,
    'classname': classname,
    'father': guardian,
    'pnumber': pnumber,
    'imagex': imagex,
  };
  await _db.update('student', dataflow, where: 'id=?', whereArgs: [id]);
  getstudentdata();
}
