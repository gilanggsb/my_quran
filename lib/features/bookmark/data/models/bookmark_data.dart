import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../common/common.dart';

part 'bookmark_data.freezed.dart';
part 'bookmark_data.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
@collectionFreezed
class BookmarkData with _$BookmarkData {
  ///Don't Forget below line
  const BookmarkData._();
  const factory BookmarkData({
    String? title,
    String? subtitle,
    int? dataId,
    int? categoryId,
    int? type,
    int? id,
  }) = _BookmarkData;

  Id get isarId => Isar.autoIncrement;

  factory BookmarkData.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDataFromJson(json);

  toJson() => _$BookmarkDataToJson(this);
}
