import 'package:databasefinal/db_helper/database_operations.dart';

import 'package:databasefinal/model/model_student.dart';

class UserService {
  late DatabaseOperation _databaseoperation;
  UserService() {
    _databaseoperation = DatabaseOperation();
  }
// save user
  saveUser(User user) async {
    return await _databaseoperation.insertData('students', user.userMap());
  }

  // read all user
  readAllUser() async {
    return await _databaseoperation.readAllrcords('students');
  }

  deleteAll(table, id) async {
    return await _databaseoperation.deleteUser('students', id);
  }

  updateUser(User user) async {
    return await _databaseoperation.updateUser('students', user.userMap());
  }
}
