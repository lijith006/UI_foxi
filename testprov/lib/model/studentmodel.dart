import 'package:hive/hive.dart';
part 'studentmodel.g.dart';

@HiveType(typeId: 0)
class StudentModel extends HiveObject {
  @HiveField(0)
  String? studentName;
  @HiveField(1)
  String? contact;
  @HiveField(2)
  String? place;

  StudentModel(
      {required this.studentName, required this.contact, required this.place});
}
