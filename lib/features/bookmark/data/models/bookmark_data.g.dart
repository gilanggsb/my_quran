// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookmarkDataAdapter extends TypeAdapter<BookmarkData> {
  @override
  final typeId = 4;

  @override
  BookmarkData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookmarkData(
      title: fields[0] as String?,
      subtitle: fields[1] as String?,
      dataId: (fields[2] as num?)?.toInt(),
      categoryId: fields[3] as String?,
      type: fields[4] as String?,
      id: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookmarkData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.dataId)
      ..writeByte(3)
      ..write(obj.categoryId)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookmarkData _$BookmarkDataFromJson(Map<String, dynamic> json) =>
    _BookmarkData(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      dataId: (json['dataId'] as num?)?.toInt(),
      categoryId: json['categoryId'] as String?,
      type: json['type'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$BookmarkDataToJson(_BookmarkData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'dataId': instance.dataId,
      'categoryId': instance.categoryId,
      'type': instance.type,
      'id': instance.id,
    };
