import 'package:flutter/material.dart';
import 'package:flutter_project_final/screens/addCars.dart';
import 'package:flutter_project_final/screens/AllCarsList.dart';
import 'package:flutter_project_final/screens/RentedCars.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.black45,
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
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
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddCars(),
              ));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white24,
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
            child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          child: Image.asset('assets/Images/home.jpg'),
        )),
        const SizedBox(
          height: 30,
        ),
//buttons---------------------------------------------------------
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton.icon(
            label: const Text(
              'Available Cars',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            icon: const Icon(
              Icons.car_rental,
              size: 29,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllCarList(),
                  ));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton.icon(
            label: const Text(
              'Rented Cars',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            icon: const Icon(
              Icons.car_rental,
              size: 29,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RentedCar(),
                  ));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton.icon(
            label: const Text(
              'Due Cars',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            icon: const Icon(
              Icons.date_range_outlined,
              size: 29,
              color: Colors.white,
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        //buttons-------------------------------------------------------------------------------------------------------------
      ]),
    ));
  }
}
