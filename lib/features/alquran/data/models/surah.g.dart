// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurahAdapter extends TypeAdapter<Surah> {
  @override
  final typeId = 2;

  @override
  Surah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Surah(
      audioUrl: fields[0] as String?,
      nameEn: fields[1] as String?,
      nameId: fields[2] as String?,
      nameLong: fields[3] as String?,
      nameShort: fields[4] as String?,
      number: (fields[5] as num?)?.toInt(),
      numberOfVerses: (fields[6] as num?)?.toInt(),
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
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Surah _$SurahFromJson(Map<String, dynamic> json) => _Surah(
  audioUrl: json['audioUrl'] as String?,
  nameEn: json['nameEn'] as String?,
  nameId: json['nameId'] as String?,
  nameLong: json['nameLong'] as String?,
  nameShort: json['nameShort'] as String?,
  number: const StringToIntConverter().fromJson(json['number'] as String?),
  numberOfVerses: const StringToIntConverter().fromJson(
    json['numberOfVerses'] as String?,
  ),
  revelation: json['revelation'] as String?,
  revelationEn: json['revelationEn'] as String?,
  revelationId: json['revelationId'] as String?,
  sequence: json['sequence'] as String?,
  tafsir: json['tafsir'] as String?,
  translationEn: json['translationEn'] as String?,
  translationId: json['translationId'] as String?,
);

Map<String, dynamic> _$SurahToJson(_Surah instance) => <String, dynamic>{
  'audioUrl': instance.audioUrl,
  'nameEn': instance.nameEn,
  'nameId': instance.nameId,
  'nameLong': instance.nameLong,
  'nameShort': instance.nameShort,
  'number': const StringToIntConverter().toJson(instance.number),
  'numberOfVerses': const StringToIntConverter().toJson(
    instance.numberOfVerses,
  ),
  'revelation': instance.revelation,
  'revelationEn': instance.revelationEn,
  'revelationId': instance.revelationId,
  'sequence': instance.sequence,
  'tafsir': instance.tafsir,
  'translationEn': instance.translationEn,
  'translationId': instance.translationId,
};
