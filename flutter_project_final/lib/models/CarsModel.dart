// import 'dart:io';

import 'package:hive_flutter/adapters.dart';

part 'CarsModel.g.dart';

@HiveType(typeId: 0)
class CarsModel extends HiveObject {
  @HiveField(0)
  late String imagex;
  @HiveField(1)
  late String model;
  @HiveField(2)
  late String year;
  @HiveField(3)
  late String insurance;
  @HiveField(4)
  late String amount;
  @HiveField(5)
  late String seat;
  @HiveField(6)
  late String fuel;
  CarsModel(
      {required this.imagex,
      required this.model,
      required this.year,
      required this.insurance,
      required this.amount,
      required this.seat,
      required this.fuel});
}
