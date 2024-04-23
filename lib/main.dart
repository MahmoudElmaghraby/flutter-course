import 'package:flutter/material.dart';
import 'package:flutter_application_1/ricky_api/characters.dart';
import 'package:flutter_application_1/todo/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CharactersScreen(),
    );
  }
}
