import 'package:flutter/material.dart';

import 'package:stbase/add_user.dart';
import 'package:stbase/user_model.dart';
import 'package:stbase/user_services.dart';

void main() {
  runApp(Student());
}

class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<User> _userList = [];
  final _userService = UserService();

  @override
  void initState() {
    super.initState();
    getAllUserDetails();
  }

  getAllUserDetails() async {
    var users = await _userService.readAllUsers();
    setState(() {
      _userList = users
          .map((user) => User(
                id: user['id'],
                name: user['name'],
                contact: user['contact'],
                info: user['info'],
                guardian: user['guardian'],
              ))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Portal'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: _userList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(_userList[index].name ?? ''),
                subtitle: Text(_userList[index].contact ?? ''),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddUser()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
