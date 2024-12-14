import 'package:databasefinal/model/model_student.dart';
import 'package:databasefinal/screens/add_Student.dart';
import 'package:databasefinal/screens/edit_user.dart';
import 'package:databasefinal/screens/student_details.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<User> _userList = [];
  final _userservice = UserService();

  Future getAllUserDetails() async {
    _userList.clear;
    var users = await _userservice.readAllUser();
    // print('elements are tested in there $users');

    users.forEach((user) {
      var userModel = User();
      userModel.id = user['id'];
      userModel.name = user['name'];
      userModel.age = user['age'];
      userModel.description = user['description'];
      _userList.add(userModel);
      setState(() {});
    });
  }

  bool loadGetAll = true;
  @override
  void initState() {
    if (loadGetAll) {
      getAllUserDetails();
      loadGetAll = false;
    }

    super.initState();
  }

  _showsuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Student Details Portal'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(
                builder: (context) => const DetailsOfStudent(),
              ))
                  .then((value) {
                if (value != null) {
                  getAllUserDetails();
                  _showsuccessSnackBar('User Details Added Success');
                }
              });
            }),

        // ignore: avoid_unnecessary_containers
        body: ListView.builder(
            itemCount: _userList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => viewUser(
                            user: _userList[index],
                          ),
                        ));
                  },
                  leading: const Icon(Icons.person),
                  title: Text(
                    _userList[index].name ?? "",
                  ),
                  subtitle: Text(_userList[index].contact ?? ""),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditUser(
                                          user: _userList[index],
                                        ))).then((value) {
                              if (value != null) {
                                getAllUserDetails();
                                _showsuccessSnackBar(
                                    'User Details Update Success');
                              }
                            });
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () async {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Delete Student..?'),
                                actions: [
                                  TextButton(
                                      onPressed: () async {
                                        //var userId = _userList[index].id;
                                        await _userservice.deleteAll(
                                            'students', context);
                                        setState(() {
                                          _userList.removeAt(index);
                                        });
                                      },
                                      child: const Text('Yes')),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('No'))
                                ],
                              ),
                            );
                          },
                          icon: const Icon(Icons.delete))
                    ]),
                  ),
                ),
              );
            }));
  }
}
