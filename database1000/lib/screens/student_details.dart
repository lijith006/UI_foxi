import 'package:databasefinal/model/model_student.dart';

import 'package:flutter/material.dart';

class DetailsOfStudent extends StatefulWidget {
  const DetailsOfStudent({super.key});

  @override
  State<DetailsOfStudent> createState() => DetailsOfStudentState();
}

final studentNameController = TextEditingController();
final studentAgeController = TextEditingController();
final studentSomecontroller = TextEditingController();
final studentContactcontroller = TextEditingController();

var _userServices = UserService();
bool validateAge(String studentAge) {
  int? age = int.tryParse(studentAge);
  return age != null && age >= 4;
}

final _formkey = GlobalKey<FormState>();

class DetailsOfStudentState extends State<DetailsOfStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: const Text(
              'CRUD',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text('Add Student',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          // child: Text(''),
                          backgroundColor: Colors.teal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null) {
                          return 'Name field is empty';
                        }
                        if (value.length < 3) {
                          return 'Name should want atleast 3 charecter';
                        }
                        return null;
                      },
                      controller: studentNameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Name'),
                          hintText: 'Enter your name'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null) {
                          return 'Age field is empty';
                        }
                        if (!validateAge(value)) {
                          return 'Student aged under 4 is not valid ';
                        }
                        return null;
                      },
                      controller: studentAgeController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Age'),
                          hintText: 'Enter your Age'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // validator: (String? value) {
                      //   if (value == null) {
                      //     return 'Contact field is empty';
                      //   }
                      //   if (value.length <= 9) {
                      //     return 'Invalid contact number';
                      //   }
                      //   return null;
                      // },
                      controller: studentContactcontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Contact'),
                          hintText: 'Enter your Mobile Number'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value == null) {
                          return 'Description field is empty';
                        }
                        if (value.length <= 5) {
                          return 'Description should want atleast 5 charecter';
                        }
                        return null;
                      },
                      controller: studentSomecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Description'),
                          hintText: 'Description'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            textStyle: const TextStyle(
                                fontSize: 10, color: Colors.white),
                          ),
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              // getting the  text of that user field value
                              // ignore: no_leading_underscores_for_local_identifiers
                              var _user = User();
                              _user.name = studentNameController.text;
                              _user.age = studentAgeController.text;
                              _user.contact = studentContactcontroller.text;
                              _user.description = studentSomecontroller.text;
                              // ignore: unused_local_variable
                              var result = await _userServices.saveUser(_user);
                              // ignore: use_build_context_synchronously
                              Navigator.pop(context, result);
                              setState(() {});
                              studentNameController.clear();
                              studentAgeController.clear();
                              studentContactcontroller.clear();
                              studentSomecontroller.clear();
                            }
                          },
                          child: const Row(
                            children: [
                              Text('Save Details',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          studentAgeController.clear();
                          studentNameController.clear();
                          studentContactcontroller.clear();
                          studentSomecontroller.clear();
                        },
                        child: const Text(
                          ' Clear Details',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
