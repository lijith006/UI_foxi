import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DSA'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            width: 400,
            child: Card(
              elevation: 7,
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text('test'),
              ),
            ),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.abc),
            onPressed: () {},
            label: Text('Continue'),
          ),
        ],
      ),
    );
  }
}
