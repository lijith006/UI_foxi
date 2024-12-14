import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    //  to get the application folder that stored in our devices
    var directory = await getApplicationDocumentsDirectory();
    // to get the current directory path and join and create the db name
    var path = join(directory.path, 'Database_Crud');
    // create instance to return this
    var databaseObj =
        openDatabase(path, version: 1, onCreate: _createDatabaseTable);
    return databaseObj;
  }

  Future<void> _createDatabaseTable(Database database, int version) async {
    // creating table for database
    String sql =
        "CREATE TABLE students(id INTEGER PRIMARY KEY ,name TEXT,age TEXT,contact TEXT,description TEXT)";

    await database.execute(sql);
  }
}
