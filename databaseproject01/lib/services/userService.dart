import 'package:databaseproject01/db_Helper/repository.dart';
import 'package:databaseproject01/model/User.dart';

class UserService {
  late Repository _repository;
  UserService() {
    _repository = Repository();
  }
  saveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

  //Read All Users
  readAllUsers() async {
    return await _repository.readData('users');
  }

  //Edit User
  updateData(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  deleteById(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}
