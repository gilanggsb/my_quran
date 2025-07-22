// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IgnoreBookmarkType extends TypeAdapter<BookmarkType> {
  @override
  final typeId = 5;

  @override
  BookmarkType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookmarkType(name: fields[0] as String?, id: fields[1] as String?);
  }

  @override
  void write(BinaryWriter writer, BookmarkType obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IgnoreBookmarkType &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookmarkType _$BookmarkTypeFromJson(Map<String, dynamic> json) =>
    _BookmarkType(name: json['name'] as String?, id: json['id'] as String?);

Map<String, dynamic> _$BookmarkTypeToJson(_BookmarkType instance) =>
    <String, dynamic>{'name': instance.name, 'id': instance.id};
