// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookmarkEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkEvent()';
}


}

/// @nodoc
class $BookmarkEventCopyWith<$Res>  {
$BookmarkEventCopyWith(BookmarkEvent _, $Res Function(BookmarkEvent) __);
}


/// @nodoc


class BookmarkStartedEvent implements BookmarkEvent {
  const BookmarkStartedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkStartedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkEvent.started()';
}


}




/// @nodoc


class BookmarkGetDataEvent implements BookmarkEvent {
  const BookmarkGetDataEvent({this.categoryId});
  

 final  String? categoryId;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkGetDataEventCopyWith<BookmarkGetDataEvent> get copyWith => _$BookmarkGetDataEventCopyWithImpl<BookmarkGetDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkGetDataEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'BookmarkEvent.getData(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $BookmarkGetDataEventCopyWith<$Res> implements $BookmarkEventCopyWith<$Res> {
  factory $BookmarkGetDataEventCopyWith(BookmarkGetDataEvent value, $Res Function(BookmarkGetDataEvent) _then) = _$BookmarkGetDataEventCopyWithImpl;
@useResult
$Res call({
 String? categoryId
});




}
/// @nodoc
class _$BookmarkGetDataEventCopyWithImpl<$Res>
    implements $BookmarkGetDataEventCopyWith<$Res> {
  _$BookmarkGetDataEventCopyWithImpl(this._self, this._then);

  final BookmarkGetDataEvent _self;
  final $Res Function(BookmarkGetDataEvent) _then;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,}) {
  return _then(BookmarkGetDataEvent(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class BookmarkDeleteBookmarkEvent implements BookmarkEvent {
  const BookmarkDeleteBookmarkEvent({this.bookmarkId});
  

 final  String? bookmarkId;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkDeleteBookmarkEventCopyWith<BookmarkDeleteBookmarkEvent> get copyWith => _$BookmarkDeleteBookmarkEventCopyWithImpl<BookmarkDeleteBookmarkEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkDeleteBookmarkEvent&&(identical(other.bookmarkId, bookmarkId) || other.bookmarkId == bookmarkId));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarkId);

@override
String toString() {
  return 'BookmarkEvent.deleteBookmark(bookmarkId: $bookmarkId)';
}


}

/// @nodoc
abstract mixin class $BookmarkDeleteBookmarkEventCopyWith<$Res> implements $BookmarkEventCopyWith<$Res> {
  factory $BookmarkDeleteBookmarkEventCopyWith(BookmarkDeleteBookmarkEvent value, $Res Function(BookmarkDeleteBookmarkEvent) _then) = _$BookmarkDeleteBookmarkEventCopyWithImpl;
@useResult
$Res call({
 String? bookmarkId
});




}
/// @nodoc
class _$BookmarkDeleteBookmarkEventCopyWithImpl<$Res>
    implements $BookmarkDeleteBookmarkEventCopyWith<$Res> {
  _$BookmarkDeleteBookmarkEventCopyWithImpl(this._self, this._then);

  final BookmarkDeleteBookmarkEvent _self;
  final $Res Function(BookmarkDeleteBookmarkEvent) _then;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarkId = freezed,}) {
  return _then(BookmarkDeleteBookmarkEvent(
bookmarkId: freezed == bookmarkId ? _self.bookmarkId : bookmarkId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class BookmarkGetBookmarkDetailEvent implements BookmarkEvent {
  const BookmarkGetBookmarkDetailEvent({this.bookmark});
  

 final  BookmarkData? bookmark;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkGetBookmarkDetailEventCopyWith<BookmarkGetBookmarkDetailEvent> get copyWith => _$BookmarkGetBookmarkDetailEventCopyWithImpl<BookmarkGetBookmarkDetailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkGetBookmarkDetailEvent&&(identical(other.bookmark, bookmark) || other.bookmark == bookmark));
}


@override
int get hashCode => Object.hash(runtimeType,bookmark);

@override
String toString() {
  return 'BookmarkEvent.getBookmarkDetail(bookmark: $bookmark)';
}


}

/// @nodoc
abstract mixin class $BookmarkGetBookmarkDetailEventCopyWith<$Res> implements $BookmarkEventCopyWith<$Res> {
  factory $BookmarkGetBookmarkDetailEventCopyWith(BookmarkGetBookmarkDetailEvent value, $Res Function(BookmarkGetBookmarkDetailEvent) _then) = _$BookmarkGetBookmarkDetailEventCopyWithImpl;
@useResult
$Res call({
 BookmarkData? bookmark
});


$BookmarkDataCopyWith<$Res>? get bookmark;

}
/// @nodoc
class _$BookmarkGetBookmarkDetailEventCopyWithImpl<$Res>
    implements $BookmarkGetBookmarkDetailEventCopyWith<$Res> {
  _$BookmarkGetBookmarkDetailEventCopyWithImpl(this._self, this._then);

  final BookmarkGetBookmarkDetailEvent _self;
  final $Res Function(BookmarkGetBookmarkDetailEvent) _then;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmark = freezed,}) {
  return _then(BookmarkGetBookmarkDetailEvent(
bookmark: freezed == bookmark ? _self.bookmark : bookmark // ignore: cast_nullable_to_non_nullable
as BookmarkData?,
  ));
}

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookmarkDataCopyWith<$Res>? get bookmark {
    if (_self.bookmark == null) {
    return null;
  }

  return $BookmarkDataCopyWith<$Res>(_self.bookmark!, (value) {
    return _then(_self.copyWith(bookmark: value));
  });
}
}

/// @nodoc
mixin _$BookmarkState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState()';
}


}

/// @nodoc
class $BookmarkStateCopyWith<$Res>  {
$BookmarkStateCopyWith(BookmarkState _, $Res Function(BookmarkState) __);
}


/// @nodoc


class BookmarkInitialState implements BookmarkState {
  const BookmarkInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.initial()';
}


}




/// @nodoc


class BookmarkLoadingState implements BookmarkState {
  const BookmarkLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.loading()';
}


}




/// @nodoc


class BookmarkLoadedState implements BookmarkState {
  const BookmarkLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.loaded()';
}


}




/// @nodoc


class BookmarkErrorState implements BookmarkState {
  const BookmarkErrorState(this.message);
  

 final  String message;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkErrorStateCopyWith<BookmarkErrorState> get copyWith => _$BookmarkErrorStateCopyWithImpl<BookmarkErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BookmarkState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $BookmarkErrorStateCopyWith<$Res> implements $BookmarkStateCopyWith<$Res> {
  factory $BookmarkErrorStateCopyWith(BookmarkErrorState value, $Res Function(BookmarkErrorState) _then) = _$BookmarkErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BookmarkErrorStateCopyWithImpl<$Res>
    implements $BookmarkErrorStateCopyWith<$Res> {
  _$BookmarkErrorStateCopyWithImpl(this._self, this._then);

  final BookmarkErrorState _self;
  final $Res Function(BookmarkErrorState) _then;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BookmarkErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BookmarkDetailAyahLoadingState implements BookmarkState {
  const BookmarkDetailAyahLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkDetailAyahLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.detailAyahLoading()';
}


}




/// @nodoc


class BookmarkDetailAyahLoadedState implements BookmarkState {
  const BookmarkDetailAyahLoadedState(this.ayah);
  

 final  Ayah? ayah;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkDetailAyahLoadedStateCopyWith<BookmarkDetailAyahLoadedState> get copyWith => _$BookmarkDetailAyahLoadedStateCopyWithImpl<BookmarkDetailAyahLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkDetailAyahLoadedState&&(identical(other.ayah, ayah) || other.ayah == ayah));
}


@override
int get hashCode => Object.hash(runtimeType,ayah);

@override
String toString() {
  return 'BookmarkState.detailAyahLoaded(ayah: $ayah)';
}


}

/// @nodoc
abstract mixin class $BookmarkDetailAyahLoadedStateCopyWith<$Res> implements $BookmarkStateCopyWith<$Res> {
  factory $BookmarkDetailAyahLoadedStateCopyWith(BookmarkDetailAyahLoadedState value, $Res Function(BookmarkDetailAyahLoadedState) _then) = _$BookmarkDetailAyahLoadedStateCopyWithImpl;
@useResult
$Res call({
 Ayah? ayah
});


$AyahCopyWith<$Res>? get ayah;

}
/// @nodoc
class _$BookmarkDetailAyahLoadedStateCopyWithImpl<$Res>
    implements $BookmarkDetailAyahLoadedStateCopyWith<$Res> {
  _$BookmarkDetailAyahLoadedStateCopyWithImpl(this._self, this._then);

  final BookmarkDetailAyahLoadedState _self;
  final $Res Function(BookmarkDetailAyahLoadedState) _then;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ayah = freezed,}) {
  return _then(BookmarkDetailAyahLoadedState(
freezed == ayah ? _self.ayah : ayah // ignore: cast_nullable_to_non_nullable
as Ayah?,
  ));
}

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AyahCopyWith<$Res>? get ayah {
    if (_self.ayah == null) {
    return null;
  }

  return $AyahCopyWith<$Res>(_self.ayah!, (value) {
    return _then(_self.copyWith(ayah: value));
  });
}
}

/// @nodoc


class BookmarkDeleteBookmarkSuccessState implements BookmarkState {
  const BookmarkDeleteBookmarkSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkDeleteBookmarkSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.deleteBookmarkSuccess()';
}


}




// dart format on
