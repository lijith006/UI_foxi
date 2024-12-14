import 'package:flutter/material.dart';
import 'package:flutter_project_final/screens/AllCarsList.dart';

class CarSelect extends StatefulWidget {
  const CarSelect({super.key});

  @override
  State<CarSelect> createState() => _CarSelectState();
}

class _CarSelectState extends State<CarSelect> {
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
                'Cars Details',
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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 200,
              width: 170,
              child: Card(
                child: const Center(
                  child: Text('Card '),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 3,
                clipBehavior: Clip.antiAlias,
                color: const Color.fromARGB(115, 146, 143, 143),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                // controller: modelNameController,
                decoration: InputDecoration(
                    label: const Text(
                      'Model',
                      style: TextStyle(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                // controller: yearController,
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
                // controller: insuranceController,
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
                // controller: amountController,
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
                // controller: seatController,
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
                style: const TextStyle(color: Colors.white),
                // controller: FuelController,
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AllCarList(),
                      ));
                },
                icon: const Icon(Icons.save),
                label: const Text('Save')),
          ]),
        ));
  }
}
