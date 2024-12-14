//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:loginpage/loginscreen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Center(
              child: Container(
                child: const Text(
                  'LE-COM',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 25,
                    color: Color.fromARGB(255, 18, 85, 141),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
