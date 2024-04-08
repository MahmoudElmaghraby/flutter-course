// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo/archived_tasks.dart';
import 'package:flutter_application_1/todo/done_tasks.dart';
import 'package:flutter_application_1/todo/new_tasks.dart';
import 'package:sqflite/sqflite.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = const [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetOpen = false;
  Database? database;
  var titleController = TextEditingController();

  @override
  void initState() {
    createDataBase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetOpen) {
            insertToDatabase(titleController.text);
            Navigator.pop(context);
            setState(() {
              isBottomSheetOpen = false;
            });
          } else {
            setState(() {
              isBottomSheetOpen = true;
            });
            scaffoldKey.currentState?.showBottomSheet((context) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 200,
                child: Center(
                  child: TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter task title',
                    ),
                  ),
                ),
              );
            });
          }
        },
        child: Icon(isBottomSheetOpen ? Icons.add : Icons.edit),
      ),
      appBar: AppBar(
        title: const Text('ToDo'),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: 'Archive',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
  // 1 . Create DB
  // 2 . open DB
  // 3 . Insert to DB
  // 4 . Get from DB

  void createDataBase() async {
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
    List<Map<String, Object?>>? list =
        await db?.rawQuery('SELECT * FROM tasks');
    print('get from the data base $list');
  }
}
