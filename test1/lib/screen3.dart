import 'package:flutter/material.dart';
import 'package:test1/main.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              color: Colors.grey[400],
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text('PersONS'),
                    subtitle: const Text('Hi there'),
                    leading: const CircleAvatar(backgroundColor: Colors.yellow),
                    trailing: Text('1$index.55PM'),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ));
                },
                child: const Text('signout')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('ALERTBOX'),
                        content: const Text('this is alert'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'))
                        ],
                      );
                    },
                  );
                },
                child: const Text('Click')),
          ],
        ),
      ),
    );
  }
}
