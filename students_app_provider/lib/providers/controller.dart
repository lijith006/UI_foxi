import 'package:flutter/material.dart';
import 'package:students_app_provider/functions/functions.dart';
import 'package:students_app_provider/models/student_model.dart';

class DataController extends ChangeNotifier {
  List<StudentModel> studentsList = <StudentModel>[];
  List<StudentModel> filteredStudents = <StudentModel>[];
  bool isLoading = true;

  StudentModel? currentStudent;
  DataController() {
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    isLoading = true;
    notifyListeners();
    await getstudentdata();
    studentsList = studentList.value;
    filteredStudents = studentsList;
    isLoading = false;
    notifyListeners();
  }

  //Search
  void searchStudents(String query) {
    if (query.isEmpty) {
      filteredStudents = studentsList;
    } else {
      filteredStudents = studentsList
          .where((student) =>
              student.name.toLowerCase().contains(query.toLowerCase()) ||
              student.classname.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void setCurrentStudent(StudentModel student) {
    currentStudent = student;
    notifyListeners();
  }

  Future<void> deleteStudent(int id) async {
    await deleteStudent(id);
    await fetchStudents();
    notifyListeners();
  }

  Future<void> editStudent(int id, String name, String classname,
      String pnumber, String guardian, String imagex) async {
    await editStudent(id, name, classname, pnumber, guardian, imagex);
    await fetchStudents();
    notifyListeners();
  }
}
