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

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah();

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{};
