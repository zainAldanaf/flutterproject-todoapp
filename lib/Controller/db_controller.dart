import 'package:flutter/material.dart';

import '../Model/db_Helper.dart';
import '../Notes.dart';


class DbController extends ChangeNotifier {
  DbController() {
    getAllNotes();
  }
  List<Notes> notes = [];
  bool isLoading = false;
  flipIsLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  getAllNotes() async {
    flipIsLoading();
    notes = await DbHelper.dbHelper.getAllNotes();
    flipIsLoading();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  bool isMale = true;
  insertNewNote() async {
    Notes notes = Notes(
        name: nameController.text,
        details: detailsController.text);
    await DbHelper.dbHelper.insertNewNote(notes);
    getAllNotes();
  }

  deleteName(int id) async {
    await DbHelper.dbHelper.deleteNote(id);
    notes.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}