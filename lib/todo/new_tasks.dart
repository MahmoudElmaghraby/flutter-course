// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/todo/cubit/todo_cubit.dart';
// import 'package:flutter_application_1/todo/cubit/todo_states.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class NewTasks extends StatelessWidget {
//   const NewTasks({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<TodoCubit, TodoStates>(
//       builder: (context, state) {
//         return FutureBuilder(
//           future: TodoCubit.get(context).database?.rawQuery(
//               'SELECT * FROM tasks'), // Wait for the database query to complete
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               // Show a loading indicator while waiting for data
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               // Handle errors
//               return Text('Error: ${snapshot.error}');
//             } else {
//               // Data has been retrieved successfully, build the UI
//               final list = TodoCubit.get(context).list;
//               return ListView.builder(
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Task title: ${list?[index]['title']}',
//                       style: const TextStyle(fontSize: 30),
//                     ),
//                   );
//                 },
//                 itemCount: list?.length ?? 0,
//               );
//             }
//           },
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo/cubit/todo_cubit.dart';
import 'package:flutter_application_1/todo/cubit/todo_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewTasks extends StatelessWidget {
  const NewTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoStates>(builder: (context, state) {
      print('the list items equal ${TodoCubit.get(context).list?.length}');
      var tasks = TodoCubit.get(context).list;
      return ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${tasks?[index]['title']}',
             // 'task title index $index',
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
        itemCount: tasks?.length,
      );
    });
  }
}
