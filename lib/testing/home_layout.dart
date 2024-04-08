// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/testing/archived_tasks_screen.dart';
import 'package:flutter_application_1/testing/done_tasks_screen.dart';
import 'package:flutter_application_1/testing/new_tasks_screen.dart';
// import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Map<dynamic, dynamic>> tasks = [];
  // List<Widget> screens =  [
  //   NewTasks(tasks: widget.tasks,),
  //   DoneTasks(),
  //   ArchivedTasks(),
  // ];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetOpen = false;
  // Database? database;
  final TextEditingController titleController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   createDB();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('To do App'),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetOpen) {
            // insertToDb(titleController.text).then((value) {
            //   getDataFromDb(database).then((value) {
            //     setState(() {
            //       tasks = value!;
            //     });
            //     print(value);
            //   }).catchError((err) {
            //     print('error ${err.toString()}');
            //   });
            // });

            Navigator.pop(context);
            setState(() {
              isBottomSheetOpen = false;
            });
          } else {
            scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: 200,
                  child: Center(
                    child: TextFormField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter tou task title',
                      ),
                    ),
                  ),
                ));
            setState(() {
              isBottomSheetOpen = true;
            });
          }
        },
        child: Icon(isBottomSheetOpen ? Icons.add : Icons.edit),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
      body: currentIndex == 0
          ? NewTasks(tasks: tasks)
          : currentIndex == 1
              ? const DoneTasks()
              : const ArchivedTasks(),
    );
  }

  // void createDB() async {
  //   database = await openDatabase(
  //     'todo.db',
  //     version: 1,
  //     onCreate: (db, version) {
  //       print('db created');
  //       db
  //           .execute(
  //               'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
  //           .then((value) {
  //         print('Table created');
  //       }).catchError((error) {
  //         print('error ${error.toString()}');
  //       });
  //     },
  //     onOpen: (db) {
  //       print('data base opened');
  //       getDataFromDb(db).then((value) {
  //         setState(() {
  //           tasks = value!;
  //         });
  //         print(value);
  //       }).catchError((err) {
  //         print('error ${err.toString()}');
  //       });
  //     },
  //   );
  // }

  // Future insertToDb(String title) {
  //   return database!.transaction((txn) async {
  //     await txn
  //         .rawInsert(
  //             'INSERT INTO tasks(title, date, time, status) VALUES("$title", "my date", "me time", "me status")')
  //         .then((value) {
  //       print('$value is inserted successfully');
  //     }).catchError((error) {
  //       print('error ${error.toString()}');
  //     });
  //   });
  // }

  // Future<List<Map<dynamic, dynamic>>?> getDataFromDb(database) async {
  //   return await database?.rawQuery('SELECT * FROM tasks')
  //       as List<Map<dynamic, dynamic>>?;
  // }
}
