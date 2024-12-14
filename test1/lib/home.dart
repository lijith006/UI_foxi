import 'package:flutter/material.dart';
import 'package:test1/screen1.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

var v = const Color.fromARGB(255, 180, 217, 248);

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 50),
          child: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Lists'),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Screen())));
                  },
                  child: const Text('Screen 1'))
            ],
          )),
      // body: Center(
      //   child: InkWell(
      //     onTap: () {
      //       setState(() {
      //         v;
      //       });
      //     },
      //     child: Ink(
      //       height: 200,
      //       width: 200,
      //       color: v,
      //       child: const Center(
      //         child: Text('amarthh'),
      //       ),
      //     ),
      //   ),

      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              v;
            });
          },
          child: Ink(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 220, 228, 79),
            child: const Center(
              child: Text('hi'),
            ),
          ),
        ),
      ),
    );
  }
}
