import 'package:database_project/screens/home.dart';
import 'package:flutter/material.dart';

class screenSplash extends StatefulWidget {
  const screenSplash({super.key});

  @override
  State<screenSplash> createState() => _screenSplashState();
}

class _screenSplashState extends State<screenSplash> {
  @override
  void initState() {
    goToLogin();
    super.initState();
  }

  Future<void> goToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screenHome()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100.0,
              textColor: Colors.blue,
            ),
            SizedBox(height: 20.0),
            Text(
              'Loading...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
