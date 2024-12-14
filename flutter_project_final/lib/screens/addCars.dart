import 'dart:io';
// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_project_final/models/CarsModel.dart';
// import 'package:flutter_project_final/screens/AllCarsList.dart';
import 'package:flutter_project_final/screens/HomeScreen.dart';
import 'package:flutter_project_final/services/Services.dart';
import 'package:image_picker/image_picker.dart';

class AddCars extends StatefulWidget {
  const AddCars({super.key});

  @override
  State<AddCars> createState() => _AddCarsState();
}

class _AddCarsState extends State<AddCars> {
  File? image25;
  String? imagepath;
  final TextEditingController _modelNameController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _insuranceController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _fuelController = TextEditingController();
  final TextEditingController _seatController = TextEditingController();
  // final TextEditingController modelNameController = TextEditingController();
  // final TextEditingController yearController = TextEditingController();
  final CarService _carService = CarService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(
              width: 65,
            ),
            Text(
              'Add Cars',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.black45,
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_box_outlined),
                color: Colors.white)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  getimage(ImageSource.gallery);
                },
                child: Container(
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: image25 != null
                          ? FileImage(image25!)
                          : const AssetImage('assets\Images\grey.jpg')
                              as ImageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: image25 == null
                      ? const Icon(Icons.add_a_photo_outlined,
                          color: Colors.white, size: 40)
                      : SizedBox(),
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: _modelNameController,
                  decoration: InputDecoration(
                      label: const Text(
                        'Model',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _yearController,
                  decoration: InputDecoration(
                      label: const Text(
                        'Year',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _insuranceController,
                  decoration: InputDecoration(
                      label: const Text(
                        'Insurance',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _amountController,
                  decoration: InputDecoration(
                      label: const Text(
                        'Amount',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _seatController,
                  decoration: InputDecoration(
                      label: const Text(
                        'Seat',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _fuelController,
                  decoration: InputDecoration(
                      label: const Text(
                        'Fuel',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () async {
                    final newSave = CarsModel(
                        // imagex: 'assets/Images/altroz-removebg-preview.png',

                        imagex: image25 != null ? image25!.path : '',
                        model: _modelNameController.text,
                        year: _yearController.text,
                        insurance: _insuranceController.text,
                        amount: _amountController.text,
                        seat: _seatController.text,
                        fuel: _fuelController.text);
                    await _carService.addCar(newSave);
                    _modelNameController.clear();
                    _yearController.clear();
                    _amountController.clear();
                    _fuelController.clear();
                    _insuranceController.clear();
                    _seatController.clear();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Save')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.save),
                  label: const Text('Cancel'))
            ],
          ),
        ]),
      ),
    );
  }

  Future<void> getimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) {
      return;
    }
    setState(() {
      image25 = File(image.path);
      imagepath = image.path.toString();
    });
  }
}
