import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'bookmark_type.freezed.dart';
part 'bookmark_type.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class BookmarkType with _$BookmarkType {
  ///Don't Forget below line
  const BookmarkType._();
  const factory BookmarkType({
    String? name,
    int? id,
  }) = _BookmarkType;

  Id get isarId => Isar.autoIncrement;

  factory BookmarkType.fromJson(Map<String, dynamic> json) =>
      _$BookmarkTypeFromJson(json);

  toJson() => _$BookmarkTypeToJson(this);

  factory BookmarkType.ayah() => const BookmarkType(id: 1, name: 'Ayah');
}

extension BookmarkTypeExtension on BookmarkType {
  bool get isAyahType => id == 1;
}
