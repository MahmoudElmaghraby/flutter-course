// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo/archived_tasks.dart';
import 'package:flutter_application_1/todo/cubit/todo_states.dart';
import 'package:flutter_application_1/todo/done_tasks.dart';
import 'package:flutter_application_1/todo/new_tasks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class TodoCubit extends Cubit<TodoStates> {
  TodoCubit() : super(TodoInistialState());

  static TodoCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = const [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];

  bool isBottomSheetOpen = false;
  Database? database;

  List<Map<String, Object?>>? list;
  Future<void> createDataBase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, status TEXT)');
        print('database created');
      },
      onOpen: (db) {
        print('database opend');
        getFromDatabase(db);
      },
    );
  }

  void insertToDatabase(String title) async {
    await database?.transaction((txn) async {
      txn
          .rawInsert('INSERT INTO tasks(title, status) VALUES("$title", "New")')
          .then((value) {
        print('row inserted with id $value');
      });
    });
  }

  void getFromDatabase(db) async {
    list = await db?.rawQuery('SELECT * FROM tasks');
  }

  void changeIndex(currentIndex) {
    this.currentIndex = currentIndex;
    emit(TodoChangeIndexState());
  }
}
