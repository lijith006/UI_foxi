import 'package:flutter/material.dart';
import 'package:flutter_project_final/main.dart';
import 'package:flutter_project_final/models/CarsModel.dart';
// import 'package:flutter_project_final/services/Services.dart';

class CarDetails extends StatefulWidget {
  final CarsModel car;
  const CarDetails({super.key, required this.car});
  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  // final CarService _carService = CarService();

  // final TextEditingController _modelNameController = TextEditingController();
  // final TextEditingController _yearController = TextEditingController();
  // final TextEditingController _insuranceController = TextEditingController();
  // final TextEditingController _amountController = TextEditingController();
  // final TextEditingController _fuelController = TextEditingController();
  // final TextEditingController _seatController = TextEditingController();

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
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 170,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 200,
                      width: 170,
                      child: Card(
                        // child:
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 3,
                        clipBehavior: Clip.antiAlias,
                        color: Color.fromARGB(115, 221, 210, 210),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Model: ${widget.car.model.toUpperCase()}',
                            style: AppTextStyles.headlines3),
                        const SizedBox(height: 20),
                        Text('Year: ${widget.car.year}',
                            style: AppTextStyles.headlines3),
                        const SizedBox(height: 20),
                        Text('Insurance: ${widget.car.insurance}',
                            style: AppTextStyles.headlines3),
                        const SizedBox(height: 20),
                        Text('Amount: ${widget.car.amount}',
                            style: AppTextStyles.headlines3),
                        const SizedBox(height: 20),
                        Text('Seat: ${widget.car.seat}',
                            style: AppTextStyles.headlines3),
                        const SizedBox(height: 20),
                        Text('Fuel: ${widget.car.fuel}',
                            style: AppTextStyles.headlines3),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        tooltip: 'Edit',
                        color: Colors.white,
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        tooltip: 'Delete',
                        color: Colors.white,
                        icon: const Icon(
                          Icons.delete_forever,
                          color: Colors.white,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Select',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )
                // TextField(
                //   style: const TextStyle(color: Colors.white),
                //   controller: _modelNameController,
                //   decoration: InputDecoration(
                //       label: const Text(
                //         'Model',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   style: const TextStyle(color: Colors.white),
                //   controller: _yearController,
                //   decoration: InputDecoration(
                //       label: const Text(
                //         'Year',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   style: const TextStyle(color: Colors.white),
                //   controller: _insuranceController,
                //   decoration: InputDecoration(
                //       label: const Text(
                //         'Insurance',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   style: const TextStyle(color: Colors.white),
                //   controller: _amountController,
                //   decoration: InputDecoration(
                //       label: const Text(
                //         'Amount',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   style: const TextStyle(color: Colors.white),
                //   controller: _seatController,
                //   decoration: InputDecoration(
                //       label: const Text(
                //         'Seat',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   style: const TextStyle(color: Colors.white),
                //   controller: _fuelController,
                //   decoration: InputDecoration(
                //       label: const Text(
                //         'Fuel',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        ));
  }
}
