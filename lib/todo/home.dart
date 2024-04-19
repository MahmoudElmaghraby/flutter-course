// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo/cubit/todo_cubit.dart';
import 'package:flutter_application_1/todo/cubit/todo_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit()..createDataBase(),
      child: BlocBuilder<TodoCubit, TodoStates>(
        builder: (context, state) {
          return Scaffold(
            key: scaffoldKey,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (TodoCubit.get(context).isBottomSheetOpen) {
                  TodoCubit.get(context).insertToDatabase(titleController.text);
                  Navigator.pop(context);
                  TodoCubit.get(context).isBottomSheetOpen = false;
                } else {
                  TodoCubit.get(context).isBottomSheetOpen = true;
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
              child: Icon(TodoCubit.get(context).isBottomSheetOpen
                  ? Icons.add
                  : Icons.edit),
            ),
            appBar: AppBar(
              title: const Text('ToDo'),
              backgroundColor: Colors.blue,
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                TodoCubit.get(context).changeIndex(index);
              },
              currentIndex: TodoCubit.get(context).currentIndex,
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
            body: TodoCubit.get(context)
                .screens[TodoCubit.get(context).currentIndex],
          );
        },
      ),
    );
  }
}
