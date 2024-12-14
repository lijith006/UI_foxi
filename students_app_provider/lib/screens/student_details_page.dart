// import 'package:flutter/material.dart';
// import 'dart:io';

// class StudentDetails extends StatelessWidget {
//   final stdetails;
//   const StudentDetails({super.key, required this.stdetails});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF121212),
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(120.0),
//         child: AppBar(
//           title: const Text('Student Details',
//               style: TextStyle(
//                   color: Color.fromARGB(255, 183, 215, 143),
//                   fontWeight: FontWeight.bold)),
//           centerTitle: true,
//           backgroundColor: const Color(0xFF1E1E2F),
//         ),
//       ),
//       body: Center(
//         child: SizedBox(
//           height: 400,
//           width: 400,
//           child: SizedBox(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ClipRRect(
//                   borderRadius:
//                       BorderRadius.circular(8), // Adjust the radius as needed
//                   child: Image.file(
//                     File(stdetails.imagex),
//                     width: 160,
//                     height: 160,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Name :  ${stdetails.name}',
//                         style: const TextStyle(
//                           fontSize: 23,
//                           color: Color.fromARGB(255, 183, 215, 143),
//                         )),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Class :  ${stdetails.classname}',
//                         style: const TextStyle(
//                           fontSize: 23,
//                           color: Color.fromARGB(255, 183, 215, 143),
//                         )),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Parent :  ${stdetails.father}',
//                         style: const TextStyle(
//                           fontSize: 23,
//                           color: Color.fromARGB(255, 183, 215, 143),
//                         )),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Mobile :  ${stdetails.pnumber}',
//                         style: const TextStyle(
//                           fontSize: 23,
//                           color: Color.fromARGB(255, 183, 215, 143),
//                         )),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:provider/provider.dart';
import 'package:students_app_provider/providers/controller.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DataController>(builder: (context, dataController, child) {
      final stdetails = dataController.currentStudent;
      if (stdetails == null) {
        return const Center(
          child: Text(
            'No student selected',
            style: TextStyle(color: Colors.white),
          ),
        );
      }

      return Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: AppBar(
            title: const Text('Student Details',
                style: TextStyle(
                    color: Color.fromARGB(255, 183, 215, 143),
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: const Color(0xFF1E1E2F),
          ),
        ),
        body: Center(
          child: SizedBox(
            height: 400,
            width: 400,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(8), // Adjust the radius as needed
                    child: Image.file(
                      File(stdetails.imagex),
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name :  ${stdetails.name}',
                          style: const TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 183, 215, 143),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Class :  ${stdetails.classname}',
                          style: const TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 183, 215, 143),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Parent :  ${stdetails.guardian}',
                          style: const TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 183, 215, 143),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Mobile :  ${stdetails.pnumber}',
                          style: const TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 183, 215, 143),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
