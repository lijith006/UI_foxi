// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:students_app_provider/functions/functions.dart';
// import 'package:students_app_provider/models/student_model.dart';
// import 'package:students_app_provider/providers/controller.dart';
// import 'package:students_app_provider/screens/edit_student.dart';
// import 'package:students_app_provider/screens/student_details_page.dart';

// class StudentList extends StatefulWidget {
//   const StudentList({super.key});

//   @override
//   State<StudentList> createState() => _StudentListState();
// }

// class _StudentListState extends State<StudentList> {
//   @override
//   void initState() {
//     // getstudentdata();
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Provider.of<DataController>(context, listen: false).fetchStudents();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: studentList,
//       builder: (context, value, child) {
//         return ListView.builder(
//           itemCount: value.length,
//           itemBuilder: (context, index) {
//             final student = value[index];

//             return Card(
//               margin: const EdgeInsets.all(10),
//               color: const Color.fromARGB(255, 204, 221, 184),
//               elevation: 5,
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: FileImage(
//                     File(student.imagex),
//                   ),
//                 ),
//                 title: Text(
//                   student.name,
//                   style: GoogleFonts.lato(
//                       textStyle: const TextStyle(color: Colors.black)),
//                 ),
//                 subtitle: Text(
//                   "Class: ${student.classname}, \nMobile: +91 - ${student.pnumber}",
//                 ),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.edit),
//                       onPressed: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => EditStudent(student: student),
//                         ));
//                       },
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.delete),
//                       onPressed: () {
//                         deletestudent(context, student);
//                       },
//                     ),
//                   ],
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (ctr) => StudentDetails(stdetails: student),
//                   ));
//                 },
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   void deletestudent(rtx, StudentModel student) {
//     showDialog(
//       context: rtx,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Delete'),
//           content: const Text('Do you want to delete?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 delectYes(context, student);
//               },
//               child: const Text('Yes'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(rtx);
//               },
//               child: const Text('No'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void delectYes(ctx, StudentModel student) {
//     deleteStudent(student.id!);
//     ScaffoldMessenger.of(ctx).showSnackBar(
//       const SnackBar(
//         content: Text("Successfully Deleted"),
//         behavior: SnackBarBehavior.floating,
//         margin: EdgeInsets.all(10),
//         backgroundColor: Colors.redAccent,
//         duration: Duration(seconds: 2),
//       ),
//     );
//     Navigator.of(ctx).pop();
//   }
// }
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_app_provider/models/student_model.dart';
import 'package:students_app_provider/providers/controller.dart';
import 'package:students_app_provider/screens/edit_student.dart';
import 'package:students_app_provider/screens/student_details_page.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  void initState() {
    super.initState();
    // Fetch students when the widget initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<DataController>(context, listen: false).fetchStudents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student List')),
      body: Consumer<DataController>(
        builder: (context, dataController, child) {
          if (dataController.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: dataController.studentsList.length,
            itemBuilder: (context, index) {
              final student = dataController.studentsList[index];

              return Card(
                margin: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 204, 221, 184),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(File(student.imagex)),
                  ),
                  title: Text(
                    student.name,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                  subtitle: Text(
                    "Class: ${student.classname}, \nMobile: +91 - ${student.pnumber}",
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditStudent(student: student),
                          ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          deletestudent(context, student);
                        },
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctr) => const StudentDetails(),
                    ));
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  void deletestudent(BuildContext rtx, StudentModel student) {
    showDialog(
      context: rtx,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete'),
          content: const Text('Do you want to delete?'),
          actions: [
            TextButton(
              onPressed: () {
                delectYes(context, student);
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(rtx);
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  void delectYes(BuildContext ctx, StudentModel student) {
    Provider.of<DataController>(ctx, listen: false).deleteStudent(student.id!);
    ScaffoldMessenger.of(ctx).showSnackBar(
      const SnackBar(
        content: Text("Successfully Deleted"),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
      ),
    );
    Navigator.of(ctx).pop();
  }
}
