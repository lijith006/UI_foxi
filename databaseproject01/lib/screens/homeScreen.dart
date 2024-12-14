import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

bool isGrid = false;

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(
            child: Text('Student Details',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          color: Colors.black),
                    ]))),
        actions: [
          IconButton(
              onPressed: () {
                isGrid = !isGrid;
                setState(() {});
              },
              icon: isGrid
                  ? const Icon(Icons.grid_goldenratio_rounded)
                  : const Icon(Icons.list))
        ],
      ),
    );
  }
}
