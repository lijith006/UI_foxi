import 'dart:io';

import 'package:database_project/model/student_model.dart';
import 'package:flutter/material.dart';

class screenViewStudent extends StatefulWidget {
  final Student student;
  const screenViewStudent({super.key, required this.student});

  @override
  State<screenViewStudent> createState() => _screenViewStudentState();
}

class _screenViewStudentState extends State<screenViewStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          shadows: [
            Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
              color: Color.fromARGB(255, 102, 0, 255),
            ),
          ],
        ),
        backgroundColor: Colors.purple[100],
      ),

      //Body********************************************
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: const Color.fromARGB(255, 245, 188, 255),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Student Image
                (widget.student.image).isNotEmpty
                    ? CircleAvatar(
                        radius: 150,
                        backgroundImage: FileImage(File(widget.student.image)),
                      )
                    : const CircleAvatar(
                        radius: 150,
                        backgroundImage:
                            AssetImage('assets/images/person_add.png'),
                      ),

                const SizedBox(
                  height: 15,
                ),

                //Name row*************************
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Name:      ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 136, 0, 255),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.student.name ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 136, 0, 255),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                //Address Row*******************
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Address:      ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 136, 0, 255),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.student.address ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 136, 0, 255),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                //Number Row*************************************
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Number:      ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 136, 0, 255),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.student.number ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 136, 0, 255),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
