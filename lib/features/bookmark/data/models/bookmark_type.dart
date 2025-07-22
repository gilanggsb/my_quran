import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../../../../lib.dart';

part 'bookmark_type.freezed.dart';
part 'bookmark_type.g.dart';

@customFreezed
@HiveType(typeId: 5, adapterName: "IgnoreBookmarkType") // Assign a unique typeId for Hive
abstract class BookmarkType with _$BookmarkType {
  const BookmarkType._();

  @customJsonSerializable
  const factory BookmarkType({@HiveField(0) String? name, @HiveField(1) String? id}) =
      _BookmarkType;

  // Removed Isar-specific code
  // Id get isarId => Isar.autoIncrement;

  factory BookmarkType.fromJson(Map<String, dynamic> json) => _$BookmarkTypeFromJson(json);

  factory BookmarkType.ayah() => const BookmarkType(id: "ayah", name: 'Ayah');
}

extension BookmarkTypeExtension on BookmarkType {
  bool get isAyahType => id == "ayah";
}
