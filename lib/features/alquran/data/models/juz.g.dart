// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'juz.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JuzAdapter extends TypeAdapter<Juz> {
  @override
  final int typeId = 1;

  @override
  Juz read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Juz(
      ayatArab: fields[0] as String?,
      ayatIndo: fields[1] as String?,
      ayatLatin: fields[2] as String?,
      name: fields[3] as String?,
      nameEndArab: fields[4] as String?,
      nameEndId: fields[5] as String?,
      nameStartArab: fields[6] as String?,
      nameStartId: fields[7] as String?,
      number: (fields[8] as num?)?.toInt(),
      surahIdEnd: (fields[9] as num?)?.toInt(),
      surahIdStart: (fields[10] as num?)?.toInt(),
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
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JuzAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Juz _$JuzFromJson(Map<String, dynamic> json) => Juz(
      ayatArab: json['ayat_arab'] as String?,
      ayatIndo: json['ayat_indo'] as String?,
      ayatLatin: json['ayat_latin'] as String?,
      name: json['name'] as String?,
      nameEndArab: json['name_end_arab'] as String?,
      nameEndId: json['name_end_id'] as String?,
      nameStartArab: json['name_start_arab'] as String?,
      nameStartId: json['name_start_id'] as String?,
      number: const StringToIntConverter().fromJson(json['number'] as String?),
      surahIdEnd: const StringToIntConverter()
          .fromJson(json['surah_id_end'] as String?),
      surahIdStart: const StringToIntConverter()
          .fromJson(json['surah_id_start'] as String?),
      verseEnd: json['verse_end'] as String?,
      verseStart: json['verse_start'] as String?,
    );

Map<String, dynamic> _$JuzToJson(Juz instance) => <String, dynamic>{
      'ayat_arab': instance.ayatArab,
      'ayat_indo': instance.ayatIndo,
      'ayat_latin': instance.ayatLatin,
      'name': instance.name,
      'name_end_arab': instance.nameEndArab,
      'name_end_id': instance.nameEndId,
      'name_start_arab': instance.nameStartArab,
      'name_start_id': instance.nameStartId,
      'number': const StringToIntConverter().toJson(instance.number),
      'surah_id_end': const StringToIntConverter().toJson(instance.surahIdEnd),
      'surah_id_start':
          const StringToIntConverter().toJson(instance.surahIdStart),
      'verse_end': instance.verseEnd,
      'verse_start': instance.verseStart,
    };
