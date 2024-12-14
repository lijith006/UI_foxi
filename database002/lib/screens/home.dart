import 'dart:io';

import 'package:database_project/model/student_model.dart';
import 'package:database_project/screens/add-student.dart';
import 'package:database_project/screens/edit_student.dart';
import 'package:database_project/screens/view_student.dart';
import 'package:database_project/services/studentService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class screenHome extends StatefulWidget {
  const screenHome({super.key});

  @override
  State<screenHome> createState() => _screenHomeState();
}

class _screenHomeState extends State<screenHome> {
  List<Student> _studentList = [];
  final _studentService = StudentService();
  TextEditingController _searchController = TextEditingController();

  Future getAllStudentDetails() async {
    var students = await _studentService.readAllStudents();

    _studentList = <Student>[];

    students.forEach((student) {
      var studentModel = Student();
      studentModel.id = student['id'];
      studentModel.name = student['name'];
      studentModel.address = student['address'];
      studentModel.number = student['number'];
      studentModel.image = student['image'];
      _studentList.add(studentModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    getAllStudentDetails();
    super.initState();
  }

  //Searchbar functions

  Future<List<Student>> filterStudentList(String query) async {
    await getAllStudentDetails();
    RegExp regExp = RegExp(query, caseSensitive: false);

    return _studentList.where((student) {
      return regExp.hasMatch(student.name!);
    }).toList();
  }

  _deleteStudentFromTile(BuildContext context, studentId) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: const Text(
              'Delete Student ?',
              style: TextStyle(color: Colors.purple),
            ),
            actions: [
              // Yes Button
              TextButton(
                  onPressed: () async {
                    var result = await _studentService.deleteStudent(studentId);
                    if (result != null) {
                      Navigator.pop(context);
                      getAllStudentDetails();
                      _showSuccessSnackBar(
                          'Student details updated successfully ...');
                    }
                  },
                  child: const Text('Yes')),

              // No button
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No')),
            ],
          );
        });
  }

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.purple,
      content: Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ));
  }

  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 45),
            child: Text(
              'Student Details',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                    color: Color.fromARGB(255, 102, 0, 255),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.purple[100],
        actions: [
          IconButton(
              onPressed: () {
                isGrid = !isGrid;
                setState(() {});
              },
              icon: isGrid
                  ? const Icon(Icons.grid_goldenratio_rounded)
                  : const Icon(Icons.list))
        ],
      ),

      // Body
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Search Box
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _searchController,
              onChanged: (query) async {
                _studentList = await filterStudentList(query);
                setState(() {});
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search students...',
                  prefixIcon: Icon(Icons.search)),
            ),
          ),

          // Listview Builder
          Flexible(
            child: _studentList.isNotEmpty
                ? isGrid
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: _studentList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => screenViewStudent(
                                          student: _studentList[index],
                                        )));
                              },
                              leading: _studentList[index].image != ''
                                  ? CircleAvatar(
                                      backgroundImage: FileImage(
                                          File(_studentList[index].image)),
                                    )
                                  : const Icon(Icons.person_3_outlined),
                              title: Text(
                                _studentList[index].name ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(_studentList[index].address ?? ''),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    screenEditStudent(
                                                      student:
                                                          _studentList[index],
                                                    )))
                                            .then((data) => data != null
                                                ? getAllStudentDetails()
                                                : null);
                                        ;
                                      },
                                      icon: Icon(
                                        Icons.edit_note_sharp,
                                        color: Colors.purple[300],
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        _deleteStudentFromTile(
                                            context, _studentList[index].id);
                                      },
                                      icon: Icon(
                                        Icons.delete_outline_outlined,
                                        color: Colors.red[300],
                                      )),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: _studentList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => screenViewStudent(
                                        student: _studentList[index]),
                                  ),
                                );
                              },
                              child: GridTile(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _studentList[index].image != ''
                                        ? CircleAvatar(
                                            radius: 40,
                                            backgroundImage: FileImage(File(
                                                _studentList[index].image)),
                                          )
                                        : const Icon(
                                            Icons.person_3_outlined,
                                            size: 80,
                                          ),
                                    Text(
                                      _studentList[index].name ?? '',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(_studentList[index].address ?? ''),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    screenEditStudent(
                                                        student: _studentList[
                                                            index]),
                                              ),
                                            )
                                                .then((data) {
                                              if (data != null) {
                                                getAllStudentDetails();
                                              }
                                            });
                                          },
                                          icon: Icon(Icons.edit_note_sharp,
                                              color: Colors.purple[300]),
                                        ),
                                        const SizedBox(width: 10),
                                        IconButton(
                                          onPressed: () {
                                            _deleteStudentFromTile(context,
                                                _studentList[index].id);
                                          },
                                          icon: Icon(
                                              Icons.delete_outline_outlined,
                                              color: Colors.red[300]),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                : const Center(
                    child: Text(
                      'No students found...',
                      style: TextStyle(
                        color: Color.fromARGB(255, 197, 98, 255),
                      ),
                    ),
                  ),
          ),
        ],
      ),

      // Add Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => screenaddStudent()))
              .then((data) => data != null ? getAllStudentDetails() : null);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
