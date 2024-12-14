import 'package:flutter/material.dart';
import 'package:loginpage/splash.dart';
//import 'loginscreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}
