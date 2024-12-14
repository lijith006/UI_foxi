import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
// import 'package:students_app_provider/functions/functions.dart';
import 'package:students_app_provider/providers/add_controllers.dart';
import 'dart:io';

class AddStudent extends StatelessWidget {
  const AddStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: const Text(
            'Add Student',
            style: TextStyle(
                color: Color.fromARGB(255, 183, 215, 143),
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFF1E1E2F),
          actions: [
            IconButton(
              onPressed: () {
                addStudentClicked(context);
              },
              icon: const Icon(
                Icons.save_rounded,
                color: Color.fromARGB(255, 183, 215, 143),
              ),
            )
          ],
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Consumer<AddControllers>(
            builder: (context, addController, child) {
              return Form(
                key: GlobalKey<FormState>(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 103, 103, 125),
                          backgroundImage: addController.isPhotoSelected
                              ? FileImage(File(addController.imagex))
                              : const AssetImage('') as ImageProvider,
                          radius: 99,
                        ),
                        Positioned(
                          bottom: 20,
                          right: 5,
                          child: IconButton(
                            onPressed: () {
                              getImage(addController);
                            },
                            icon: const Icon(Icons.add_a_photo_outlined),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    // Name input field
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 224, 233, 237)),
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 183, 215, 143)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 131, 236, 134),
                              width: 1),
                        ),
                        suffixIcon: const Icon(Icons.abc_outlined,
                            color: Color.fromARGB(255, 183, 215, 143)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Name';
                        }
                        addController.updateName(value);
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Class input field
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 224, 233, 237)),
                      decoration: InputDecoration(
                        labelText: "Class",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 183, 215, 143)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 131, 236, 134),
                              width: 1),
                        ),
                        suffixIcon: const Icon(Icons.class_outlined,
                            color: Color.fromARGB(255, 183, 215, 143)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Class';
                        }
                        addController.updateClassname(value);
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Guardian input field
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 224, 233, 237)),
                      decoration: InputDecoration(
                        labelText: "Guardian",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 183, 215, 143)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 131, 236, 134),
                              width: 1),
                        ),
                        suffixIcon: const Icon(Icons.person,
                            color: Color.fromARGB(255, 183, 215, 143)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Guardian';
                        }
                        addController.updateGuardian(value);
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Mobile input field
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 224, 233, 237)),
                      decoration: InputDecoration(
                        labelText: "Mobile",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 183, 215, 143)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 131, 236, 134),
                              width: 1),
                        ),
                        suffixIcon: const Icon(Icons.phone_sharp,
                            color: Color.fromARGB(255, 183, 215, 143)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Mobile';
                        } else if (value.length != 10) {
                          return 'Mobile number should be 10 digits';
                        }
                        addController.updatePnumber(value);
                        return null;
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> addStudentClicked(BuildContext context) async {
    final addController = Provider.of<AddControllers>(context, listen: false);
    final formKey = GlobalKey<FormState>();

    if (formKey.currentState!.validate() && addController.isPhotoSelected) {
      await addController.addStudent();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Successfully added"),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill the required fields'),
          duration: Duration(seconds: 2),
          margin: EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  Future<void> getImage(AddControllers addController) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }

    addController.updateImage(image.path);
  }
}
