import 'package:hive_ce/hive.dart';

import 'bookmark_category.dart';

class BookmarkCategoryAdapter extends TypeAdapter<BookmarkCategory> {
  @override
  final int typeId = 3; // Same as in @HiveType

  @override
  BookmarkCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
