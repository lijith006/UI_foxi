// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CarsModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarsModelAdapter extends TypeAdapter<CarsModel> {
  @override
  final int typeId = 0;

  @override
  CarsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarsModel(
      imagex: fields[0] as String,
      model: fields[1] as String,
      year: fields[2] as String,
      insurance: fields[3] as String,
      amount: fields[4] as String,
      seat: fields[5] as String,
      fuel: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CarsModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.imagex)
      ..writeByte(1)
      ..write(obj.model)
      ..writeByte(2)
      ..write(obj.year)
      ..writeByte(3)
      ..write(obj.insurance)
      ..writeByte(4)
      ..write(obj.amount)
      ..writeByte(5)
      ..write(obj.seat)
      ..writeByte(6)
      ..write(obj.fuel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
