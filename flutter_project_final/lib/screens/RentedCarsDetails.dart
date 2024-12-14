import 'package:flutter/material.dart';

class RentedCarDetails extends StatefulWidget {
  const RentedCarDetails({super.key});

  @override
  State<RentedCarDetails> createState() => _RentedCarDetailsState();
}

class _RentedCarDetailsState extends State<RentedCarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(
              width: 38,
            ),
            Text(
              'RentedCars Details',
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
    );
  }
}
