import 'package:flutter/material.dart';
import 'dart:io';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// import 'package:students_app_provider/functions/functions.dart';
// import 'package:students_app_provider/functions/functions.dart';
import 'package:students_app_provider/providers/controller.dart';
// import 'package:students_app_provider/functions/functions.dart';
import 'package:students_app_provider/screens/student_details_page.dart';

class StudentListGridView extends StatefulWidget {
  const StudentListGridView({super.key});

  @override
  State<StudentListGridView> createState() => _StudentListGridViewState();
}

class _StudentListGridViewState extends State<StudentListGridView> {
  @override
  void initState() {
    // getstudentdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataController>(builder: (context, controller, child) {
      if (controller.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      final students = controller.studentsList;
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          return Card(
            margin: const EdgeInsets.all(5),
            elevation: 5,
            color: const Color.fromARGB(255, 204, 221, 184),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctr) => const StudentDetails(),
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: FileImage(
                      File(student.imagex),
                    ),
                    radius: 45,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    student.name,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                  Text(
                    "Class: ${student.classname}, \nMobile: +91 - ${student.pnumber}",
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
