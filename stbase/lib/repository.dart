import 'package:sqflite/sqflite.dart';
import 'package:stbase/db_connections.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

  // insert
  insertData(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }

  // read all record
  readData(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

  // read a single record using ID
  readDataById(table, itemId) async {
    var connection = await database;
    return await connection?.query(table, where: 'id=?', whereArgs: [itemId]);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection
        ?.update(table, data, where: 'id?', whereArgs: [data['id']]);
  }
}
