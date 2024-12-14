import 'package:flutter/material.dart';
import 'package:students_app_provider/functions/functions.dart';
import 'package:students_app_provider/models/student_model.dart';

class AddControllers extends ChangeNotifier {
  String name = '';
  String classname = '';
  String guardian = '';
  String pnumber = '';
  String imagex = '';
  bool isPhotoSelected = false;

  void updateName(String value) {
    name = value;
    notifyListeners();
  }

  void updateClassname(String value) {
    classname = value;
    notifyListeners();
  }

  void updateGuardian(String value) {
    guardian = value;
    notifyListeners();
  }

  void updatePnumber(String value) {
    pnumber = value;
    notifyListeners();
  }

  void updateImage(String value) {
    imagex = value;
    isPhotoSelected = true;
    notifyListeners();
  }

  Future<void> addStudent() async {
    if (name.isNotEmpty && classname.isNotEmpty) {
      StudentModel newStudent = StudentModel(
          name: name,
          classname: classname,
          guardian: guardian,
          pnumber: pnumber,
          imagex: imagex);
      await addstudent(newStudent);

      clearFields();
      notifyListeners();
    } else {
      const Text('No data');
    }
  }

  void clearFields() {
    name = '';
    classname = '';
    guardian = '';
    pnumber = '';
    imagex = '';
    isPhotoSelected = false;
    notifyListeners();
  }
}
