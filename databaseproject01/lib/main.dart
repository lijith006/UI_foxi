import 'package:databaseproject01/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Database',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const splashScreen(),
    ));
  }
}





















// // void main(List<String> args) {
// //   runApp(HomePage());
// // }

// // class HomePage extends StatefulWidget {
// //   // ignore: use_key_in_widget_constructors
// //   const HomePage();

// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   final List<User> _userList = [];
// //   final _userservice = UserService();

// //   Future getAllUserDetails() async {
// //     // _userList = <User>[];
// //     var users = await _userservice.readAllUsers();
// //     print('elements are tested in there $users');

// //     users.forEach((user) {
// //       setState(() {
// //         var userModel = User();
// //         userModel.id = user['id'];
// //         userModel.name = user['name'];
// //         userModel.age = user['age'];
// //         userModel.contact = user['contact'];
// //         _userList.add(userModel);
// //       });
// //     });
// //   }

// //   @override
// //   void initState() {
// //     getAllUserDetails();
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         debugShowCheckedModeBanner: false,
// //         home: Scaffold(
// //             appBar: AppBar(
// //               backgroundColor: Color.fromARGB(255, 87, 109, 235),
// //               title: const Text('Student Details Portal'),
// //             ),
// //             floatingActionButton: FloatingActionButton(
// //                 child: const Icon(Icons.add),
// //                 onPressed: () {
// //                   Navigator.of(context).push(
// //                       MaterialPageRoute(builder: ((context) => UserAdd())));
// //                 }),
// //             body: ListView.builder(
// //                 itemCount: _userList.length,
// //                 itemBuilder: (context, index) {
// //                   return Card(
// //                     child: ListTile(
// //                       leading: const Icon(Icons.person),
// //                       title: Text(
// //                         _userList[index].name ?? "",
// //                       ),
// //                       subtitle: Text(_userList[index].contact ?? ""),
// //                       trailing: Row(
// //                           crossAxisAlignment: CrossAxisAlignment.baseline,
// //                           children: [
// //                             IconButton(
// //                                 onPressed: () async {},
// //                                 icon: const Icon(Icons.edit)),
// //                             IconButton(
// //                                 onPressed: () {},
// //                                 icon: const Icon(Icons.delete))
// //                           ]),
// //                     ),
// //                   );
// //                 })));
//   }
// }
  
// // void main(List<String> args) {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //         debugShowCheckedModeBanner: false, home: Homescreen());
// //   }
// // }

// // class Homescreen extends StatefulWidget {
// //   const Homescreen({super.key});

// //   @override
// //   State<Homescreen> createState() => _HomescreenState();
// // }

// // class _HomescreenState extends State<Homescreen> {
// //   late List<User> _userList = <User>[];
// //   final _userService = UserService();

// //   getAllUserDetails() async {
// //     var users = await _userService.readAllUsers();
// //     _userList = <User>[];
// //     users.forEach(( user) {
// //         var userModel = User();
// //         userModel.id = user['id'];
// //         userModel.name = user['name'];
// //         userModel.contact = user['contact'];
// //         userModel.place = user['palce'];
// //         _userList.add(userModel);
// //       });
// //     }
    
// //       @override
// //       Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //       }
// //   }
// //   @override
// //   void initState() {
// //     getAllUserDetails();
// //     super.initState();
// //   }

  
  

// //   // _deleteFormDialog(BuildContext context, userId) {
// //   //   return showDialog(
// //   //       context: context,
// //   //       builder: (param) {
// //   //         return AlertDialog(
// //   //           title: const Text(
// //   //             'Are You Sure to Delete',
// //   //             style: TextStyle(color: Colors.teal, fontSize: 20),
// //   //           ),
// //   //           actions: [
// //   //             TextButton(
// //   //                 style: TextButton.styleFrom(
// //   //                     primary: Colors.white, // foreground
// //   //                     backgroundColor: Colors.red),
// //   //                 onPressed: () async {
// //   //                   var result = await _userService.deleteUser(userId);
// //   //                   if (result != null) {
// //   //                     Navigator.pop(context);
// //   //                     getAllUserDetails();
// //   //                     _showSuccessSnackBar('User Detail Deleted Success');
// //   //                   }
// //   //                 },
// //   //                 child: const Text('Delete')),
// //   //             TextButton(
// //   //                 style: TextButton.styleFrom(
// //   //                     primary: Colors.white, // foreground
// //   //                     backgroundColor: Colors.teal),
// //   //                 onPressed: () {
// //   //                   Navigator.pop(context);
// //   //                 },
// //   //                 child: const Text('Close'))
// //   //           ],
// //   //         );
// //   //       });
// //   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.teal,
// //           title: const Text('Database',
// //               style:
// //                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
// //         ),
// //         body: ListView.builder(
// //             itemCount: _userList.length,
// //             itemBuilder: (context, index) {
// //               return Card(
// //                 child: ListTile(
// //                   title: Text(_userList[index].name ?? ''),
// //                   subtitle: Text(_userList[index].contact ?? ''),
// //                 ),
// //               );
// //             }),
// //         floatingActionButton: FloatingActionButton(
// //           onPressed: () {
// //             Navigator.of(context).push(MaterialPageRoute(
// //               builder: (context) {
// //                 return const UserAdd();
// //               },
// //             ));
// //           },
// //           backgroundColor: Colors.teal,
// //           child: const Icon(
// //             Icons.add,
// //             color: Colors.white,
// //           ),
// //         ));
// //   }
// // }
