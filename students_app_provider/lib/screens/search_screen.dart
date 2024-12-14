// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:students_app_provider/functions/functions.dart';
// import 'package:students_app_provider/models/student_model.dart';
// import 'package:students_app_provider/screens/student_details_page.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   List<StudentModel> finduser = [];

//   @override
//   void initState() {
//     super.initState();
//     finduser = studentList.value;
//     // Initialize with the current student list
//   }

//   void _runFilter(String enteredKeyword) {
//     List<StudentModel> result = [];
//     if (enteredKeyword.isEmpty) {
//       result = studentList.value;
//       // Reset to the original list if the search is empty
//     } else {
//       // Filter based on student properties
//       result = studentList.value
//           .where((student) =>
//               student.name
//                   .toLowerCase()
//                   .contains(enteredKeyword.toLowerCase()) ||
//               student.classname
//                   .toLowerCase()
//                   .contains(enteredKeyword.toLowerCase()))
//           .toList();
//     }
//     setState(() {
//       finduser = result;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF121212),
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(110),
//         child: AppBar(
//           backgroundColor: const Color(0xFF1E1E2F),
//           title: const Text(
//             'Search Student',
//             style: TextStyle(
//                 color: Color.fromARGB(255, 183, 215, 143),
//                 fontWeight: FontWeight.bold),
//           ),
//           bottom: PreferredSize(
//             preferredSize: const Size.fromHeight(100),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(
//                 width: 350, height: 55, // Adjust the width as needed
//                 child: TextField(
//                   onChanged: (value) => _runFilter(value),
//                   style: const TextStyle(color: Colors.white),
//                   decoration: const InputDecoration(
//                     labelText: 'Search',
//                     labelStyle: TextStyle(
//                       color: Color.fromARGB(255, 183, 215, 143),
//                     ),
//                     suffixIcon: Icon(
//                       Icons.search,
//                       color: Color.fromARGB(255, 183, 215, 143),
//                     ),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(20))),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: ValueListenableBuilder<List<StudentModel>>(
//           valueListenable: studentList,
//           builder: (context, studentListValue, child) {
//             return Padding(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: finduser.length,
//                       itemBuilder: (context, index) {
//                         final finduserItem = finduser[index];
//                         return Card(
//                           elevation: 4,
//                           margin: const EdgeInsets.symmetric(vertical: 10),
//                           color: const Color.fromARGB(255, 204, 221, 184),
//                           child: ListTile(
//                             leading: CircleAvatar(
//                               backgroundImage:
//                                   FileImage(File(finduserItem.imagex)),
//                             ),
//                             title: Text(finduserItem.name),
//                             subtitle: Text('CLASS : ${finduserItem.classname}'),
//                             onTap: () {
//                               Navigator.of(context)
//                                   .pushReplacement(MaterialPageRoute(
//                                 builder: (ctr) =>
//                                     StudentDetails(stdetails: finduserItem),
//                               ));
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app_provider/providers/controller.dart';

import 'package:students_app_provider/screens/student_details_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final dataController = Provider.of<DataController>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
          backgroundColor: const Color(0xFF1E1E2F),
          title: const Text(
            'Search Student',
            style: TextStyle(
                color: Color.fromARGB(255, 183, 215, 143),
                fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 350, height: 55, // Adjust the width as needed
                child: TextField(
                  onChanged: (value) {
                    dataController.searchStudents(value);
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 183, 215, 143),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 183, 215, 143),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Consumer<DataController>(
          builder: (context, dataController, child) {
            // Fetch the filtered student list
            final filteredStudents = dataController.filteredStudents;

            return Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredStudents.length,
                      itemBuilder: (context, index) {
                        final student = filteredStudents[index];
                        return Card(
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          color: const Color.fromARGB(255, 204, 221, 184),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: FileImage(File(student.imagex)),
                            ),
                            title: Text(student.name),
                            subtitle: Text('CLASS : ${student.classname}'),
                            onTap: () {
                              // Set the selected student in the provider
                              dataController.setCurrentStudent(student);

                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctr) => const StudentDetails(),
                              ));
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
