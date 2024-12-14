import 'package:sqflite/sqflite.dart';
import 'package:databaseproject01/db_Helper/DatabaseConnection.dart';

class Repository {
  late DatabaseConnection databaseConnection;
  Repository() {
    databaseConnection = DatabaseConnection();
  }
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await databaseConnection.setDatabase();
      return _database;
    }
  } //insertuser

  insertData(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }

//Read all data}
  readData(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

//Real a single record by ID
  readDataById(table, itemId) async {
    var connection = await database;
    return await connection?.query(table, where: 'id=?', whereArgs: [itemId]);
  }
//Update User

  updateData(table, data) async {
    var connection = await database;
    return await connection
        ?.update(table, data, where: 'Id=?', whereArgs: [data['id']]);
  }

//Delete
  deleteDataById(table, itemId) async {
    var connection = await database;
    return await connection?.rawDelete("delete from $table where id=$itemId");
  }
}
