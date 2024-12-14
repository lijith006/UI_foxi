import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

final usernameController = TextEditingController();
final passwordController = TextEditingController();
bool isDataMatched = true;
@override
void inittate() {
  _setInitialValues();
}

void _setInitialValues() {
  if (usernameController.text.isEmpty) {
    usernameController.text = 'lijith006@gmail.com';
  }
  if (passwordController.text.isEmpty) {
    passwordController.text = 'lenovo';
  }
}

final _formKey = GlobalKey<FormState>();
//var ctx;

//Loginscreen
class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 155.0, horizontal: 8),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // username
                  TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 16, 2, 2)),
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      //checking value is empty in field.
                      if (value == null || value.isEmpty) {
                        return 'Username is Empty';
                      } else {
                        return null;
                      }
                    },

                    // password
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),

                    //validating

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is Empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: !isDataMatched,
                        child: const Text(
                          'Username and password does not match',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),

                      //Button
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              loginCheck();
                            } else {
                              // print('Data Empty');
                            }
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('Login'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//logincheck function
  void loginCheck() {
    final username = usernameController.text;
    final password = passwordController.text;
    if (username == 'lijith006@gmail.com' && password == 'lenovo') {
      //go to home page

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()));
    } else {
      setState(() {
        isDataMatched = false;
      });
    }
  }
}
