import 'package:counter_app/providers/counter_provider.dart';
import 'package:counter_app/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberprovider, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberprovider.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Screen 1'),
          backgroundColor: Colors.cyan,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Center(
                child: Text(
                  numberprovider.numbers.last.toString(),
                  style: const TextStyle(fontSize: 35, color: Colors.red),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      Text(numberprovider.numbers[index].toString(),
                          style: const TextStyle(
                            fontSize: 20,
                          )),
                  itemCount: numberprovider.numbers.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        elevation: 5,
                        shadowColor: Colors.black,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondScreen(),
                          ));
                    },
                    child: const Text('Screen 2')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
