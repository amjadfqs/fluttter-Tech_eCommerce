import 'package:lab_2/LocalDB/Model/UserModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;

class DBControll {
  static Database? _database;
  static const String _dbName = 'myDB.db';
  static const String _tableName = 'user';
  static const int Version = 1;
  static const String C_Email = 'email';
  static const String C_Password = 'password';

  Future<Database?> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  _initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + _dbName;
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute('''
    CREATE TABLE $_tableName (
    $C_Email TEXT PRIMARY KEY,
    $C_Password TEXT NOT NULL
    )
    ''');
  }

  Future<int> saveData(UserModel user) async {
    var dbClient = await database;
    int res = await dbClient!.insert(_tableName, user.toMap());
    return res;
  }
}
