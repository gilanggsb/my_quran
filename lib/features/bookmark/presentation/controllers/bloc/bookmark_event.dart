part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.started() = _Started;
  const factory BookmarkEvent.getData({int? categoryId}) = _GetData;
  const factory BookmarkEvent.getBookmarkDetail({
    BookmarkData? bookmark,
  }) = _GetBookmarkDetail;
}
