import 'package:hive_ce/hive.dart';

import 'surah.dart';

class SurahAdapter extends TypeAdapter<Surah> {
  @override
  final int typeId = 2;

  @override
  Surah read(BinaryReader reader) {
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

    return Surah(
      audioUrl: fields[0] as String?,
      nameEn: fields[1] as String?,
      nameId: fields[2] as String?,
      nameLong: fields[3] as String?,
      nameShort: fields[4] as String?,
      number: parse(fields[5]),
      numberOfVerses: parse(fields[6]),
      revelation: fields[7] as String?,
      revelationEn: fields[8] as String?,
      revelationId: fields[9] as String?,
      sequence: fields[10] as String?,
      tafsir: fields[11] as String?,
      translationEn: fields[12] as String?,
      translationId: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Surah obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.audioUrl)
      ..writeByte(1)
      ..write(obj.nameEn)
      ..writeByte(2)
      ..write(obj.nameId)
      ..writeByte(3)
      ..write(obj.nameLong)
      ..writeByte(4)
      ..write(obj.nameShort)
      ..writeByte(5)
      ..write(obj.number)
      ..writeByte(6)
      ..write(obj.numberOfVerses)
      ..writeByte(7)
      ..write(obj.revelation)
      ..writeByte(8)
      ..write(obj.revelationEn)
      ..writeByte(9)
      ..write(obj.revelationId)
      ..writeByte(10)
      ..write(obj.sequence)
      ..writeByte(11)
      ..write(obj.tafsir)
      ..writeByte(12)
      ..write(obj.translationEn)
      ..writeByte(13)
      ..write(obj.translationId);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurahAdapter && runtimeType == other.runtimeType && typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
