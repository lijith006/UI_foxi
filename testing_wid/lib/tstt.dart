import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

// class DatabaseConnection {
//   Future<Database> setDatabase() async {
//     var directory = await getApplicationDocumentsDirectory();
//     var path = join(directory.path, 'db_crud.db');
//     var database = await openDatabase(
//       path,
//       version: 2, // Updated to version 2 to apply the onUpgrade changes
//       onCreate: _createDatabase,
//       onUpgrade: _addNewColumn,
//     );
//     return database;
//   }

//   Future<void> _createDatabase(Database database, int version) async {
//     await database.execute('''
//       CREATE TABLE users (
//         id INTEGER PRIMARY KEY,
//         studentname TEXT,
//         contact TEXT,
//         email TEXT,
//         password TEXT,
//         photo TEXT
//       )
//     ''');

//     print('Database created successfully');
//   }

// class DatabaseConnection {
//   Future<Database> setDatabase() async {
//     var directory = await getApplicationDocumentsDirectory();
//     var path = join(directory.path, 'CRUD.db');
//     var database = await openDatabase(path,
//         version: 2, onCreate: createDatabase, onUpgrade: addColumn);
//     return database;
//   }

//   Future<void> createDatabase(Database database, int version) async {
//     await database.execute(
//         'CREATE TABLE users(int INTEGER PRIMERY KEY,studentsname TEXT, contact TEXT,email TEXT)');
//     print('success');
//   }

//   Future<void> addColumn(
//       Database database, int oldVersion, int newVersion) async {
//     if (oldVersion < 2) {
//       database.execute('ALTER TABLE users ADD COLUMN score TEXT');
//       print('success');
//     }
//   }
// }

class DatabaseConnections {
  Future<Database> setDatabase() async {
    var directory = getApplicationCacheDirectory();
    var path = join(directory.path, 'CRUD.db');
    var database = await openDatabase(path,
        version: 2, onCreate: createDatabase, onUpgrade: addColumn);
    return database;
  }
}

Future<void> createDatabase(Database database, int version) async {
  await database
      .execute('CREATE TABLE users(studentsname TEXT,contact TEXT,email TEXT)');
  print('success');
}

Future<void> addColumn(
    Database database, int oldVersion, int newVersion) async {
  if (oldVersion < 2) {
    await database.execute('ALTER TABLE users ADD COLUMN score TEXT');
    print('success');
  }
}
