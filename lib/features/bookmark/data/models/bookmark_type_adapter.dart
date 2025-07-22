import 'package:hive_ce/hive.dart';

import 'bookmark_type.dart';

class BookmarkTypeAdapter extends TypeAdapter<BookmarkType> {
  @override
  final int typeId = 5; // ⚠️ Must be unique and NOT 3 (already used by BookmarkCategory)

  @override
  BookmarkType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return BookmarkType(
      name: fields[0] as String?,
      id: fields[1] as String?,
    );
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
