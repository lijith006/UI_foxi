import 'package:counter_app/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
          title: const Text('Screen 2'),
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Center(
                child: Text(
                  numberprovider.numbers.last.toString(),
                  style: const TextStyle(color: Colors.red, fontSize: 35),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberprovider.numbers.length,
                  itemBuilder: (context, index) =>
                      Text(numberprovider.numbers[index].toString(),
                          style: const TextStyle(
                            fontSize: 20,
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
