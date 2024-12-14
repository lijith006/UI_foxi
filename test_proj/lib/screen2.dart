import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_proj/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
              child: const Icon(Icons.add),
              onPressed: () {
                counter.add();
              },
            ),
          ],
        ),
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Center(
              child: Text(counter.numbers.last.toString(),
                  style: const TextStyle(color: Colors.red, fontSize: 35)),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: counter.numbers.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    counter.numbers[index].toString(),
                    style: const TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
