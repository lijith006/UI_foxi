import 'package:flutter_project_final/models/CarsModel.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'flutter_project_final/lib/models/CarsModel.dart';

class CarService {
  Box<CarsModel>? carbox;
  Future<void> openBox() async {
    carbox = await Hive.openBox<CarsModel>('cars_db');
  }

  Future<void> closeBox() async {
    await carbox!.close();
  }

//ADD...
  Future<void> addCar(CarsModel car) async {
    if (carbox == null) {
      await openBox();
    }
    await carbox!.add(car);
  }

  Future<List<CarsModel>> getCars() async {
    if (carbox == null) {
      await openBox();
    }
    return carbox!.values.toList();
  }

  Future<void> updateCars(int index, CarsModel car) async {
    if (carbox == null) {
      await openBox();
    }
    await carbox!.putAt(index, car);
    print('Updated');
  }

  Future<void> deleteCars(int index) async {
    if (carbox == null) {
      await openBox();
    }
    await carbox!.deleteAt(index);
  }
}
