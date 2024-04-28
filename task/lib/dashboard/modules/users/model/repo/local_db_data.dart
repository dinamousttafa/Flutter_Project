//import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task_1/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:task_1/dashboard/modules/users/model//user_model.dart';

class DatabaseRepo extends ParentRepo {
  DatabaseRepo._init();

  static DatabaseRepo? _singletoneObject;
  static late Database _database;

  static Future<DatabaseRepo> get instance async {
    if (_singletoneObject == null) {
      await _initDatabase();
      _singletoneObject = DatabaseRepo._init();
    }
    return _singletoneObject!;
  }

  static Future<void> _initDatabase() async {
    final String databasepath = await getDatabasesPath();
    final String Path = databasepath + "/users.db";

    _database = await openDatabase(
      Path,
      version: 1,
      onCreate: _createTables,
    );
  }

  static Future<void> _createTables(Database db, _) async {
    await db.execute("""
CREATE TABLE user(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
address TEXT )
""");
  }

  @override
  Future<void> delete({required Comparable<num> id}) async {
    await _database.delete('user', where: 'id=?', whereArgs: [id]);
  }

  @override
  Future<List<UserModel>> fetch() async {
    return (await _database.query('user'))
        .map((e) => UserModel.fromJson(e))
        .toList();
  }

  @override
  Future<void> insert({required String name, String? address}) async {
    await _database.insert('user', {'name': name, 'address': address});
  }
}
