import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Login App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Text(
                'Hellow',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                ),
              ),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'User Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'forget password',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
