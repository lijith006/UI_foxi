// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_project_final/models/CarsModel.dart';
// import 'package:flutter_project_final/screens/Login.dart';
// import 'package:flutter_project_final/screens/Register_Page.dart';
import 'package:flutter_project_final/screens/SplashScreen.dart';
import 'package:flutter_project_final/services/Services.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CarsModelAdapter());
  await CarService().openBox();

  runApp(MyApp());
}

class AppTextStyles {
  static const TextStyle headlines1 =
      TextStyle(fontSize: 25, color: Colors.white);
  static const TextStyle headlines2 =
      TextStyle(fontSize: 22, color: Colors.white);
  static const TextStyle headlines3 =
      TextStyle(fontSize: 18, color: Colors.white);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Car Rental App',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
