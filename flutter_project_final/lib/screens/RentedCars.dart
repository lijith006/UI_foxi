import 'package:flutter/material.dart';
import 'package:flutter_project_final/screens/HomeScreen.dart';
import 'package:flutter_project_final/screens/RentedCarsDetails.dart';

class RentedCar extends StatefulWidget {
  const RentedCar({super.key});

  @override
  State<RentedCar> createState() => _RentedCarState();
}

class _RentedCarState extends State<RentedCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rented Cars',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
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
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10.0),
        children: List.generate(8, (index) {
          return SizedBox(
            height: 200,
            width: 170,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RentedCarDetails(),
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                clipBehavior: Clip.antiAlias,
                color: const Color.fromARGB(115, 146, 143, 143),
              ),
            ),
          );
        }),
      ),
    );
  }
}
