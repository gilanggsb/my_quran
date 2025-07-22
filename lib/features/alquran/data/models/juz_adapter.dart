import 'package:hive_ce/hive.dart';

import 'juz.dart';

class JuzAdapter extends TypeAdapter<Juz> {
  @override
  final int typeId = 1; // Must match typeId in @HiveType

  @override
  Juz read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    int? parse(dynamic value) {
      if (value == null) return null;
      if (value is int) return value;
      if (value is String) return int.tryParse(value);
      if (value is num) return value.toInt();
      return null;
    }

    return Juz(
      ayatArab: fields[0] as String?,
      ayatIndo: fields[1] as String?,
      ayatLatin: fields[2] as String?,
      name: fields[3] as String?,
      nameEndArab: fields[4] as String?,
      nameEndId: fields[5] as String?,
      nameStartArab: fields[6] as String?,
      nameStartId: fields[7] as String?,
      number: parse(fields[8]),
      surahIdEnd: parse(fields[9]),
      surahIdStart: parse(fields[10]),
      verseEnd: fields[11] as String?,
      verseStart: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Juz obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.ayatArab)
      ..writeByte(1)
      ..write(obj.ayatIndo)
      ..writeByte(2)
      ..write(obj.ayatLatin)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.nameEndArab)
      ..writeByte(5)
      ..write(obj.nameEndId)
      ..writeByte(6)
      ..write(obj.nameStartArab)
      ..writeByte(7)
      ..write(obj.nameStartId)
      ..writeByte(8)
      ..write(obj.number)
      ..writeByte(9)
      ..write(obj.surahIdEnd)
      ..writeByte(10)
      ..write(obj.surahIdStart)
      ..writeByte(11)
      ..write(obj.verseEnd)
      ..writeByte(12)
      ..write(obj.verseStart);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JuzAdapter && runtimeType == other.runtimeType && typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
