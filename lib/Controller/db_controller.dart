import 'package:flutter/material.dart';

import '../Model/db_Helper.dart';
import '../Notes.dart';


class DbController extends ChangeNotifier {
  DbController() {
    getAllNotes();
  }
  List<Notes> students = [];
  bool isLoading = false;
  flipIsLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  getAllNotes() async {
    flipIsLoading();
    students = await DbHelper.dbHelper.getAllNotes();
    flipIsLoading();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  bool isMale = true;
  insertNewStudent() async {
    Notes notes = Notes(
        name: nameController.text,
        details: detailsController.text);
    await DbHelper.dbHelper.insertNewNote(notes);
    getAllNotes();
  }

  // updateStudent(int id) async {

  // }

  deleteName(int id) async {
    await DbHelper.dbHelper.deleteNote(id);
    students.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}