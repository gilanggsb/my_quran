import 'package:hive_ce/hive.dart';

import 'bookmark_data.dart';

class BookmarkDataAdapter extends TypeAdapter<BookmarkData> {
  @override
  final int typeId = 4; // Must match the @HiveType typeId

  @override
  BookmarkData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return BookmarkData(
      title: fields[0] as String?,
      subtitle: fields[1] as String?,
      dataId: fields[2] as int?,
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
