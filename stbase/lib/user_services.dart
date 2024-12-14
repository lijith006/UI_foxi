import 'package:stbase/repository.dart';
import 'package:stbase/user_model.dart';

class UserService {
  late Repository _repository;
  UserService() {
    _repository = Repository();
  }
  // SaveUser(User user) async {
  //   return await _repository.insertData('users', user.UserMap(user));
  // }

  Future<void> saveUser(User user) async {
    return await _repository.insertData('users', user.toMap());
  }

  Future<List<Map<String, dynamic>>> readAllUsers() async {
    return await _repository.readData('users');
  }

  //read all
  // readAllUsers() async {
  //   return await _repository.readData('users');
  // }
}
