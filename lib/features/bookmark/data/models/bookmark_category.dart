import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../common/common.dart';

part 'bookmark_category.freezed.dart';
part 'bookmark_category.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
@collectionFreezed
class BookmarkCategory with _$BookmarkCategory {
  ///Don't Forget below line
  const BookmarkCategory._();
  const factory BookmarkCategory({
    String? name,
    int? id,
  }) = _BookmarkCategory;

  Id get isarId => Isar.autoIncrement;

  factory BookmarkCategory.fromJson(Map<String, dynamic> json) =>
      _$BookmarkCategoryFromJson(json);

  toJson() => _$BookmarkCategoryToJson(this);
}
