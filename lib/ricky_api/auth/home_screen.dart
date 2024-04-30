import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ricky_api/auth/login_screnn.dart';
import 'package:flutter_application_1/ricky_api/characters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshop) {
          if (snapshop.hasData) {
            return CharactersScreen();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
