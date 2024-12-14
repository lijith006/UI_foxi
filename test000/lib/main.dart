import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

final usernameController = TextEditingController();
final passwordController = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
        ),
        body: SafeArea(
          child: TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              border: OutlineInputBorder(),
            ),
          ),
        ));
  }
}
