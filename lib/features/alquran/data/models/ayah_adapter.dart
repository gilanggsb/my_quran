import 'package:hive_ce/hive.dart';

import 'ayah.dart'; // Make sure to import your model

class AyahAdapter extends TypeAdapter<Ayah> {
  @override
  final int typeId = 0;

  @override
  Ayah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    int? parse(dynamic value) {
      if (value == null) return null;
      if (value is int) return value;
      if (value is String) return int.tryParse(value);
      if (value is num) return value.toInt();
      return null;
    }

    return Ayah(
      id: parse(fields[0]),
      arab: fields[1] as String?,
      asbab: fields[2] as String?,
      audio: fields[3] as String?,
      ayah: parse(fields[4]),
      juz: parse(fields[5]),
      surah: parse(fields[6]),
      latin: fields[7] as String?,
      notes: fields[8] as String?,
      page: fields[9] as String?,
      text: fields[10] as String?,
      theme: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Ayah obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.arab)
      ..writeByte(2)
      ..write(obj.asbab)
      ..writeByte(3)
      ..write(obj.audio)
      ..writeByte(4)
      ..write(obj.ayah)
      ..writeByte(5)
      ..write(obj.juz)
      ..writeByte(6)
      ..write(obj.surah)
      ..writeByte(7)
      ..write(obj.latin)
      ..writeByte(8)
      ..write(obj.notes)
      ..writeByte(9)
      ..write(obj.page)
      ..writeByte(10)
      ..write(obj.text)
      ..writeByte(11)
      ..write(obj.theme);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AyahAdapter && runtimeType == other.runtimeType && typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
