import 'package:databasefinal/db_helper/database_connections.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseOperation {
  late DatabaseConnection _databaseconnection;
  DatabaseOperation() {
    _databaseconnection = DatabaseConnection();
  }

  // to check database and create
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseconnection.setDatabase();
      return _database;
    }
  }

// Insert User

  insertData(table, data) async {
    var insert = await database;
    return await insert?.insert(table, data);
  }

// Read all record
  readAllrcords(table) async {
    var read = await database;
    return await read?.query(table);
  }

// Read a single Record By ID
  readById(userId) async {
    var readsinglerecord = await database;
    return readsinglerecord
        ?.query('students', where: 'id=?', whereArgs: [userId]);
  }

// Update User
  updateUser(table, data) async {
    var update = await database;
    return await update
        ?.update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

//  Delete User

  deleteUser(table, userId) async {
    var delete = await database;
    return await delete?.rawDelete("delete from $table where id = $userId");
  }
}
