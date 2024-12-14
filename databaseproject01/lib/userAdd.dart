import 'package:databaseproject01/model/User.dart';
import 'package:databaseproject01/services/userService.dart';
import 'package:flutter/material.dart';

class UserAdd extends StatefulWidget {
  const UserAdd({super.key});

  @override
  State<UserAdd> createState() => _UserAddState();
}

var agecontroller = TextEditingController();
var idcontroller = TextEditingController();
var contactcontroller = TextEditingController();
var namecontroller = TextEditingController();
var placecontroller = TextEditingController();
bool _validateName = false;
bool _validateAge = false;
bool _validatePlace = false;
bool _validateContact = false;
var _userService = UserService();
//final _formKey = GlobalKey<FormState>();

class _UserAddState extends State<UserAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Add User',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            //  key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Add User',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/two.jpg'),
                      // child: Image.asset(
                      //   'assets/images/two.jpg',
                      // ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: namecontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your Name',
                    label: const Text('Name'),
                    errorText: _validateName ? 'Name Can\'t Be Empty' : null,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: agecontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your Age',
                      label: const Text('Age'),
                      errorText: _validateAge ? 'Age Can\'t Be Empty' : null,
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: placecontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your Place',
                      label: const Text('Place'),
                      errorText:
                          _validatePlace ? 'Place Can\'t Be Empty' : null,
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: contactcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your Contact',
                      label: const Text('Contact'),
                      errorText:
                          _validateContact ? 'Contact Can\'t Be Empty' : null,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () async {
                          setState(() {
                            namecontroller.text.isEmpty
                                ? _validateName = true
                                : _validateName = false;
                            agecontroller.text.isEmpty
                                ? _validateAge = true
                                : _validateAge = false;
                            placecontroller.text.isEmpty
                                ? _validatePlace = true
                                : _validatePlace = false;
                            contactcontroller.text.isEmpty
                                ? _validateContact = true
                                : _validateContact = false;
                          });
                          if (_validateName == false &&
                              _validateAge == false &&
                              _validatePlace == false &&
                              _validateContact == false) {
                            var user = User();
                            user.name = namecontroller.text;
                            user.age = agecontroller.text;
                            user.place = placecontroller.text;
                            user.contact = contactcontroller.text;
                            var result = _userService.saveUser(user);
                            print('result is:$result');
                          }
                        },
                        child: const Text(
                          'Save details',
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          agecontroller.text = '';

                          contactcontroller.text = '';
                          namecontroller.text = '';
                          placecontroller.text = '';
                        },
                        child: const Text('Clear details',
                            style: TextStyle(color: Colors.white))),
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
