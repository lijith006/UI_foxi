import 'package:flutter/material.dart';
import 'package:test1/screen2.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Screen'),
          actions: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Screen2()));
                  },
                  child: const Text('Screen 2'),
                )
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsetsDirectional.all(30),
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 48, 53, 56),
                ),
              ),
            ),
            InkWell(
                onTap: () {},
                child: Ink(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.all(Radius.circular(2)))),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ));
  }
}
