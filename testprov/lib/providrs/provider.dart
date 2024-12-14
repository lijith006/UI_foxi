import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:testprov/model/studentmodel.dart';

class StudentProvider extends ChangeNotifier {
  final Box<StudentModel> studentbox = Hive.box<StudentModel>('students');
  List<StudentModel>get student.
}
