import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import '../Notes.dart';

class DbHelper {
  DbHelper._();
  static DbHelper dbHelper = DbHelper._();
  late Database database;
  initDatabase() async {
    String appPath = await getDatabasesPath();
    String dbPath = appPath + '/flutter_course.db';
    database = await openDatabase(dbPath, version: 2, onCreate: (db, v) {
      db.execute(
          'CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, isMale INTEGER, gpa REAL)');
    });
  }

  insertNewNote(Notes note) async {
    try {
      int rowNumber = await database.insert('notes', note.toMap());
      log(rowNumber.toString());
    } catch (e) {
      log("row has not been inserted");
    }
  }

  Future<List<Notes>> getAllNotes() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Map> results = await database.query('notes');
    List<Notes> notes = results.map((e) => Notes.fromMap(e)).toList();
    return notes;
  }

  Future<Notes> getNoteById(int id) async {
    List<Map> results = await database.query('notes', where: 'id=$id');
    return Notes.fromMap(results.first);
  }

  deleteNote(int id) async {
    await database.delete('notes', where: 'id=$id');
  }

  updateNote(Notes note) async {
    await database.update('notes', note.toMap(),
        where: 'id=${note.id}');
  }
}