// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyahAdapter extends TypeAdapter<Ayah> {
  @override
  final typeId = 0;

  @override
  Ayah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ayah(
      id: (fields[0] as num?)?.toInt(),
      arab: fields[1] as String?,
      asbab: fields[2] as String?,
      audio: fields[3] as String?,
      ayah: (fields[4] as num?)?.toInt(),
      juz: (fields[5] as num?)?.toInt(),
      surah: (fields[6] as num?)?.toInt(),
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

_Ayah _$AyahFromJson(Map<String, dynamic> json) => _Ayah(
  id: const StringToIntConverter().fromJson(json['id'] as String?),
  arab: json['arab'] as String?,
  asbab: json['asbab'] as String?,
  audio: json['audio'] as String?,
  ayah: const StringToIntConverter().fromJson(json['ayah'] as String?),
  juz: const StringToIntConverter().fromJson(json['juz'] as String?),
  surah: const StringToIntConverter().fromJson(json['surah'] as String?),
  latin: json['latin'] as String?,
  notes: json['notes'] as String?,
  page: json['page'] as String?,
  text: json['text'] as String?,
  theme: json['theme'] as String?,
);

Map<String, dynamic> _$AyahToJson(_Ayah instance) => <String, dynamic>{
  'id': const StringToIntConverter().toJson(instance.id),
  'arab': instance.arab,
  'asbab': instance.asbab,
  'audio': instance.audio,
  'ayah': const StringToIntConverter().toJson(instance.ayah),
  'juz': const StringToIntConverter().toJson(instance.juz),
  'surah': const StringToIntConverter().toJson(instance.surah),
  'latin': instance.latin,
  'notes': instance.notes,
  'page': instance.page,
  'text': instance.text,
  'theme': instance.theme,
};
