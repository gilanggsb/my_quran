part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.started() = BookmarkStartedEvent;
  const factory BookmarkEvent.getData({String? categoryId}) = BookmarkGetDataEvent;
  const factory BookmarkEvent.deleteBookmark({String? bookmarkId}) = BookmarkDeleteBookmarkEvent;
  const factory BookmarkEvent.getBookmarkDetail({BookmarkData? bookmark}) =
      BookmarkGetBookmarkDetailEvent;
}
