import 'package:databasefinal/details_page.dart';
import 'package:databasefinal/model/model_student.dart';
import 'package:databasefinal/services/user_services.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  final User user;
  final Function(User updatedUser)? onUpdate;
  const EditUser({super.key, required this.user, this.onUpdate});

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  final studentNameController = TextEditingController();
  final studentAgeController = TextEditingController();
  final studentSomecontroller = TextEditingController();
  final studentContactcontroller = TextEditingController();
  final _userServices = UserService();
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    setState(() {
      studentNameController.text = widget.user.name ?? '';
      studentAgeController.text = widget.user.age ?? '';
      studentSomecontroller.text = widget.user.description ?? '';
      studentContactcontroller.text = widget.user.contact ?? '';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: const Text(
              'Crud operation',
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
                      child: Text('Edit Student Details',
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
                          backgroundColor: Colors.grey,
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
                        if (value.length <= 4) {
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
                            backgroundColor: Colors.indigo,
                            textStyle: const TextStyle(
                                fontSize: 10, color: Colors.white),
                          ),
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              // getting the  text of that user field value
                              // ignore: no_leading_underscores_for_local_identifiers
                              var _user = User();
                              _user.id = widget.user.id;
                              _user.name = studentNameController.text;
                              _user.age = studentAgeController.text;
                              _user.contact = studentContactcontroller.text;
                              _user.description = studentSomecontroller.text;
                              // ignore: unused_local_variable
                              try {
                                var result =
                                    await _userServices.updateUser(_user);
                                if (widget.onUpdate != null) {
                                  widget.onUpdate!(_user);
                                }
                                // ignore: use_build_context_synchronously
                                Navigator.pop(context, result);

                                studentNameController.clear();
                                studentAgeController.clear();
                                studentContactcontroller.clear();
                                studentSomecontroller.clear();
                                setState(() {});
                              } catch (e) {
                                print(e);
                              }
                            }
                          },
                          child: const Row(
                            children: [
                              Text('Update Details',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
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
                          textStyle: const TextStyle(
                              fontSize: 10, color: Colors.white),
                        ),
                        onPressed: () {
                          studentAgeController.clear();
                          studentNameController.clear();
                          studentContactcontroller.clear();
                          studentSomecontroller.clear();
                        },
                        child: const Text(
                          'Clear',
                          style: TextStyle(color: Colors.white, fontSize: 13),
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
