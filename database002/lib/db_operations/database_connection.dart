import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_crud');
    var database =
        await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  Future<void> _createDatabase(Database database, int version) async {
    String sql =
        "CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, address TEXT, number TEXT, image TEXT)";
    await database.execute(sql);
  }
}
