import 'package:flutter/material.dart';
import 'package:testui/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
