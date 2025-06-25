import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'bookmark_type.freezed.dart';
part 'bookmark_type.g.dart';

@Freezed(fromJson: false, toJson: false)
@HiveType(typeId: 3) // Assign a unique typeId for Hive
@JsonSerializable(fieldRename: FieldRename.snake)
class BookmarkType with _$BookmarkType {
  const BookmarkType._();

  const factory BookmarkType({@HiveField(0) String? name, @HiveField(1) String? id}) =
      _BookmarkType;

  // Removed Isar-specific code
  // Id get isarId => Isar.autoIncrement;

  factory BookmarkType.fromJson(Map<String, dynamic> json) => _$BookmarkTypeFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkTypeToJson(this);

  factory BookmarkType.ayah() => const BookmarkType(id: "ayah", name: 'Ayah');
}

extension BookmarkTypeExtension on BookmarkType {
  bool get isAyahType => id == "ayah";
}
