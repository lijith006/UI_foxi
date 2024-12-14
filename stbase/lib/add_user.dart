import 'package:flutter/material.dart';
import 'package:stbase/main.dart';
import 'package:stbase/user_model.dart';
import 'package:stbase/user_services.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  var _userNameController = TextEditingController();
  var _userContactController = TextEditingController();
  var _userinfoController = TextEditingController();
  var _userGuardianController = TextEditingController();
  bool _validateName = false;
  bool _validateContact = false;
  bool _validateInfo = false;
  bool _validateGuardian = false;
  var _userService = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Portal'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Add New User',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal)),
              const SizedBox(height: 12),
              const CircleAvatar(
                backgroundImage: AssetImage('lib/assets/images/img1.jpg'),
                radius: 60,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _userNameController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Your Name',
                  labelText: 'Name',
                  errorText:
                      _validateName ? 'Name value Can\'t Be Empty' : null,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _userinfoController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Your class',
                  labelText: 'Class',
                  errorText:
                      _validateInfo ? 'Class Value Can\'t Be Empty' : null,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _userGuardianController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Guardian Name',
                  labelText: 'Guardian',
                  errorText: _validateGuardian
                      ? 'Guardian Name Can\'t Be Empty'
                      : null,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _userContactController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Your Mobile Number',
                  labelText: 'Mobile',
                  errorText:
                      _validateContact ? 'Contact Can\'t Be Empty' : null,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blue,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    onPressed: () async {
                      setState(() {
                        _userNameController.text.isEmpty
                            ? _validateName = true
                            : _validateName = false;
                        _userinfoController.text.isEmpty
                            ? _validateInfo = true
                            : _validateInfo = false;
                        _userGuardianController.text.isEmpty
                            ? _validateGuardian = true
                            : _validateGuardian = false;
                        _userContactController.text.isEmpty
                            ? _validateContact = true
                            : _validateContact = false;
                      });
                      if (_validateName == false &&
                          _validateInfo == false &&
                          _validateContact == false &&
                          _validateGuardian == false) {
                        print('Data saved');
                        var _user = User();
                        _user.name = _userNameController.text;
                        _user.contact = _userContactController.text;
                        _user.info = _userinfoController.text;
                        _user.guardian = _userGuardianController.text;
                        await _userService.saveUser(_user);
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Student()));
                      }
                    },
                    child: Text('Save'),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 60,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.red,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    onPressed: () {
                      _userContactController.text = '';
                      _userGuardianController.text = '';
                      _userinfoController.text = '';
                      _userNameController.text = '';
                    },
                    child: Text('Clear Details'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
