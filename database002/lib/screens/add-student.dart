import 'dart:io';

import 'package:database_project/model/student_model.dart';
import 'package:database_project/services/studentService.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class screenaddStudent extends StatefulWidget {
  screenaddStudent({super.key});

  @override
  State<screenaddStudent> createState() => _screenaddStudentState();
}

class _screenaddStudentState extends State<screenaddStudent> {
  var _nameController = TextEditingController();
  var _addressController = TextEditingController();
  var _numberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  var _studentService = StudentService();

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.purple,
      content: Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ));
  }

  //Function for image-picker

  Future<String> pickimage() async {
    ImagePicker imagePicker = ImagePicker();
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    return image!.path;
  }

  String image1 = 'assets/images/person_add.png';
  String newimage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Student',
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
        backgroundColor: Colors.purple[100],
      ),

      // Body**********
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  // Add-Student Details Text***************
                  const Text(
                    'Add Student Details',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),

                  const SizedBox(
                    height: 22,
                  ),

                  //Image-field**************
                  Stack(children: [
                    newimage == ''
                        ? CircleAvatar(
                            backgroundImage: AssetImage(image1),
                            radius: 60,
                          )
                        : CircleAvatar(
                            backgroundImage: FileImage(File(newimage)),
                            radius: 60,
                          ),
                    IconButton(
                        onPressed: () async {
                          newimage = await pickimage();
                          setState(() {});
                        },
                        icon: const Icon(Icons.add_a_photo_outlined))
                  ]),

                  const SizedBox(
                    height: 15,
                  ),

                  // Name-field*************
                  TextFormField(
                    controller: _nameController,
                    validator: (name) =>
                        name!.isEmpty ? 'Please enter a name' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Name',
                        labelText: 'Name'),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  //Address-field***************
                  TextFormField(
                    controller: _addressController,
                    validator: (address) =>
                        address!.isEmpty ? 'Please enter an address' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Address',
                        labelText: 'Address'),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  //Number-Field***************
                  TextFormField(
                    controller: _numberController,
                    validator: (number) =>
                        number!.isEmpty ? 'Please enter a number' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Number',
                        labelText: 'Number'),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //  Two Buttons*******************************************************************
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //Save Button**********************
                      ElevatedButton(
                          onPressed: () async {
                            //Validation work on save-button click
                            _formKey.currentState!.validate();

                            if (_nameController.text.isNotEmpty &&
                                _addressController.text.isNotEmpty &&
                                _numberController.text.isNotEmpty) {
                              // print(
                              //'Great!! Data is ready to save');
                              var _student = Student();
                              _student.name = _nameController.text;
                              _student.address = _addressController.text;
                              _student.number = _numberController.text;
                              _student.image = newimage;
                              var result =
                                  await _studentService.SaveStudent(_student);

                              //For Coming out from the add-student page
                              Navigator.pop(context, result);
                              _showSuccessSnackBar(
                                  'Student details added successfully ...');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent[700],
                              shadowColor: Colors.redAccent),
                          child: const Text(
                            'Save Details',
                            style: TextStyle(color: Colors.white),
                          )),

                      const SizedBox(
                        width: 15,
                      ),

                      //Clear Button**************************
                      ElevatedButton(
                          onPressed: () {
                            _nameController.text = '';
                            _addressController.text = '';
                            _numberController.text = '';
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shadowColor: Colors.blueAccent),
                          child: const Text(
                            'Clear All',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
