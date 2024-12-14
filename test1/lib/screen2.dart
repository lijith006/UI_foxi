import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('Person'),
              subtitle: const Text('Hi there'),
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              trailing: Text('1$index.00AM'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 20),
    );
  }
}
