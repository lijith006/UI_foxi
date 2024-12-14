import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_project_final/models/CarsModel.dart';
import 'package:flutter_project_final/screens/CarsDetails.dart';
// import 'package:flutter_project_final/screens/CarsDetails.dart';
import 'package:flutter_project_final/screens/HomeScreen.dart';
import 'package:flutter_project_final/services/Services.dart';
// import 'package:flutter_project_final/screens/CarsDetails.dart';

class AllCarList extends StatefulWidget {
  final File? imageFile;
  const AllCarList({super.key, this.imageFile});

  @override
  State<AllCarList> createState() => _AllCarListState();
}

class _AllCarListState extends State<AllCarList> {
  //File? imageFile;

//   final CarService _carService = CarService();
//   List<CarsModel> _cars = [];
// //Loading
//   Future<void> _loadCars() async {
//     _cars = await _carService.getCars();
//     setState(() {});
//   }

//   @override
//   void initState() {
//     _loadCars();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'Available Cars',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           backgroundColor: Colors.transparent,
//           iconTheme: const IconThemeData(color: Colors.white),
//         ),
//         backgroundColor: const Color(0xFF1E1E1E),
//         bottomNavigationBar: BottomAppBar(
//           height: 70,
//           color: Colors.black45,
//           shape: const CircularNotchedRectangle(),
//           child: Row(

//             children: [
//               IconButton(
//                 icon: const Icon(Icons.home),
//                 color: Colors.white,
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const HomeScreen(),
//                       ));
//                 },
//               ),
//               const Spacer(),
//               IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.search),
//                   color: Colors.white),
//               IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.account_box_outlined),
//                   color: Colors.white)
//             ],
//           ),
//         ),
//         body: Container(
//             height: double.infinity,
//             width: double.infinity,
//             padding: EdgeInsets.all(20),

//             child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
//               itemCount: _cars.length,
//               itemBuilder: (context, index) {
//                 final cars = _cars[index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => CarDetails(car: cars),
//                         ));
//                   },
//                   child: Card(
//                     elevation: 5,
//                     color: Colors.grey,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                        if(widget.imageFile!= null)
//                         Image.file(widget.imageFile!,
//                                      width: 100,
//                                      height: 100,
//                                      fit: BoxFit.cover,),

//                           ],),
//                         Text(
//                           cars.model.toUpperCase(),
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           cars.fuel.toString(),
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                         const SizedBox(height: 8),
//                  ],),)
//                   ),},),),);}}

  final CarService _carService = CarService();
  List<CarsModel> _cars = [];

  // Loading cars
  Future<void> _loadCars() async {
    _cars = await _carService.getCars();
    setState(() {});
  }

  @override
  void initState() {
    _loadCars();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Available Cars',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
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
                  ),
                );
              },
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_box_outlined),
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: _cars.length,
          itemBuilder: (context, index) {
            final cars = _cars[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetails(car: cars),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.imageFile != null)
                      Image.file(
                        widget.imageFile!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    Text(
                      cars.model.toUpperCase(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      cars.fuel.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
