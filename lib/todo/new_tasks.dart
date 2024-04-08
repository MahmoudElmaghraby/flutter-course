import 'package:flutter/material.dart';

class NewTasks extends StatelessWidget {
  const NewTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'task title index $index',
            style: const TextStyle(fontSize: 30),
          ),
        );
      },
      itemCount: 5,
    );
  }
}
