// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyahAdapter extends TypeAdapter<Ayah> {
  @override
  final int typeId = 0;

  @override
  Ayah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ayah(
      id: fields[0] as String?,
      idInt: (fields[1] as num?)?.toInt(),
      arab: fields[2] as String?,
      asbab: fields[3] as String?,
      audio: fields[4] as String?,
      ayah: fields[5] as String?,
      ayahInt: (fields[6] as num?)?.toInt(),
      juz: fields[7] as String?,
      juzInt: (fields[8] as num?)?.toInt(),
      surah: fields[9] as String?,
      surahInt: (fields[10] as num?)?.toInt(),
      latin: fields[11] as String?,
      notes: fields[12] as String?,
      page: fields[13] as String?,
      text: fields[14] as String?,
      theme: fields[15] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Ayah obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.idInt)
      ..writeByte(2)
      ..write(obj.arab)
      ..writeByte(3)
      ..write(obj.asbab)
      ..writeByte(4)
      ..write(obj.audio)
      ..writeByte(5)
      ..write(obj.ayah)
      ..writeByte(6)
      ..write(obj.ayahInt)
      ..writeByte(7)
      ..write(obj.juz)
      ..writeByte(8)
      ..write(obj.juzInt)
      ..writeByte(9)
      ..write(obj.surah)
      ..writeByte(10)
      ..write(obj.surahInt)
      ..writeByte(11)
      ..write(obj.latin)
      ..writeByte(12)
      ..write(obj.notes)
      ..writeByte(13)
      ..write(obj.page)
      ..writeByte(14)
      ..write(obj.text)
      ..writeByte(15)
      ..write(obj.theme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AyahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah(
      id: json['id'] as String?,
      idInt: (json['id_int'] as num?)?.toInt(),
      arab: json['arab'] as String?,
      asbab: json['asbab'] as String?,
      audio: json['audio'] as String?,
      ayah: json['ayah'] as String?,
      ayahInt: (json['ayah_int'] as num?)?.toInt(),
      juz: json['juz'] as String?,
      juzInt: (json['juz_int'] as num?)?.toInt(),
      surah: json['surah'] as String?,
      surahInt: (json['surah_int'] as num?)?.toInt(),
      latin: json['latin'] as String?,
      notes: json['notes'] as String?,
      page: json['page'] as String?,
      text: json['text'] as String?,
      theme: json['theme'] as String?,
    );

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{
      'id': instance.id,
      'id_int': instance.idInt,
      'arab': instance.arab,
      'asbab': instance.asbab,
      'audio': instance.audio,
      'ayah': instance.ayah,
      'ayah_int': instance.ayahInt,
      'juz': instance.juz,
      'juz_int': instance.juzInt,
      'surah': instance.surah,
      'surah_int': instance.surahInt,
      'latin': instance.latin,
      'notes': instance.notes,
      'page': instance.page,
      'text': instance.text,
      'theme': instance.theme,
    };
