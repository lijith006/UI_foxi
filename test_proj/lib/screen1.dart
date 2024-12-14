import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_proj/provider.dart';
import 'package:test_proj/screen2.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counter, child) => Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.cyan,
              onPressed: () {
                counter.remove();
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.cyan,
              onPressed: () {
                counter.add();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Screen 1'),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                counter.numbers.last.toString(),
                style: const TextStyle(color: Colors.red, fontSize: 35),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: counter.numbers.length,
                itemBuilder: (context, index) => Text(
                    counter.numbers[index].toString(),
                    style: const TextStyle(color: Colors.blue, fontSize: 35)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecondScreen(),
                            ));
                      },
                      child: const Text(
                        'Screen 2',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
