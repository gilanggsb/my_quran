part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.started() = _Started;
  const factory BookmarkEvent.getData({String? categoryId}) = _GetData;
  const factory BookmarkEvent.deleteBookmark({String? bookmarkId}) =
      _DeleteBookmark;
  const factory BookmarkEvent.getBookmarkDetail({
    BookmarkData? bookmark,
  }) = _GetBookmarkDetail;
}
