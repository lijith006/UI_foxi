//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test1/screen1.dart';
import 'package:test1/screen2.dart';
import 'package:test1/screen3.dart';
//import 'package:test1/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

var boolIsSelected = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        body: SafeArea(
      child: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Image.asset('asset/images/two.jpg'),
          ),
          ChoiceChip(
            backgroundColor: Colors.lightBlue,
            avatar: Image.asset('asset/images/icon.jpg'),
            label: const Text('Text 1'),
            selected: boolIsSelected,
            onSelected: (newboolvalue) {
              boolIsSelected = newboolvalue;
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Screen2(),
                ));
              },
              child: Text('screen2')),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.purple,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 4),
            ),
          ),
          Form(
              child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(style: BorderStyle.solid),
                )),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Screen(),
                  ));
                },
                child: const Text('Screen 1'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const Screen3();
                      },
                    ));
                  },
                  child: const Text('Screen 3'))
            ],
          ))
        ],
      ),
    ));
  }
}
