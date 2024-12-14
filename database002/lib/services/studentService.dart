import 'package:database_project/db_operations/repository.dart';
import 'package:database_project/model/student_model.dart';

class StudentService {
  late Repository _repository;
  StudentService() {
    _repository = Repository();
  }

  //Save Student
  SaveStudent(Student student) async {
    return await _repository.insertData('students', student.studentMap());
  }

  //Read all students
  readAllStudents() async {
    return await _repository.readData('students');
  }

  //Edit Student
  UpdateStudent(Student student) async {
    return await _repository.updateData('students', student.studentMap());
  }

  //Delete Student
  deleteStudent(studentId) async {
    return await _repository.deleteDataById('students', studentId);
  }
}
