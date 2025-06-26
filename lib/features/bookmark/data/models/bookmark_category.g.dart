// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookmarkCategoryAdapter extends TypeAdapter<BookmarkCategory> {
  @override
  final typeId = 3;

  @override
  BookmarkCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookmarkCategory(
      name: fields[0] as String?,
      id: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookmarkCategory obj) {
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
      other is BookmarkCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookmarkCategory _$BookmarkCategoryFromJson(Map<String, dynamic> json) =>
    _BookmarkCategory(name: json['name'] as String?, id: json['id'] as String?);

Map<String, dynamic> _$BookmarkCategoryToJson(_BookmarkCategory instance) =>
    <String, dynamic>{'name': instance.name, 'id': instance.id};
