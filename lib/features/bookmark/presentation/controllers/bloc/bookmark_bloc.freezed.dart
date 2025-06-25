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


class _Started implements BookmarkEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkEvent.started()';
}


}




/// @nodoc


class _GetData implements BookmarkEvent {
  const _GetData({this.categoryId});
  

 final  String? categoryId;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDataCopyWith<_GetData> get copyWith => __$GetDataCopyWithImpl<_GetData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetData&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'BookmarkEvent.getData(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$GetDataCopyWith<$Res> implements $BookmarkEventCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) _then) = __$GetDataCopyWithImpl;
@useResult
$Res call({
 String? categoryId
});




}
/// @nodoc
class __$GetDataCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(this._self, this._then);

  final _GetData _self;
  final $Res Function(_GetData) _then;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,}) {
  return _then(_GetData(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DeleteBookmark implements BookmarkEvent {
  const _DeleteBookmark({this.bookmarkId});
  

 final  String? bookmarkId;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteBookmarkCopyWith<_DeleteBookmark> get copyWith => __$DeleteBookmarkCopyWithImpl<_DeleteBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteBookmark&&(identical(other.bookmarkId, bookmarkId) || other.bookmarkId == bookmarkId));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarkId);

@override
String toString() {
  return 'BookmarkEvent.deleteBookmark(bookmarkId: $bookmarkId)';
}


}

/// @nodoc
abstract mixin class _$DeleteBookmarkCopyWith<$Res> implements $BookmarkEventCopyWith<$Res> {
  factory _$DeleteBookmarkCopyWith(_DeleteBookmark value, $Res Function(_DeleteBookmark) _then) = __$DeleteBookmarkCopyWithImpl;
@useResult
$Res call({
 String? bookmarkId
});




}
/// @nodoc
class __$DeleteBookmarkCopyWithImpl<$Res>
    implements _$DeleteBookmarkCopyWith<$Res> {
  __$DeleteBookmarkCopyWithImpl(this._self, this._then);

  final _DeleteBookmark _self;
  final $Res Function(_DeleteBookmark) _then;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarkId = freezed,}) {
  return _then(_DeleteBookmark(
bookmarkId: freezed == bookmarkId ? _self.bookmarkId : bookmarkId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _GetBookmarkDetail implements BookmarkEvent {
  const _GetBookmarkDetail({this.bookmark});
  

 final  BookmarkData? bookmark;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBookmarkDetailCopyWith<_GetBookmarkDetail> get copyWith => __$GetBookmarkDetailCopyWithImpl<_GetBookmarkDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBookmarkDetail&&(identical(other.bookmark, bookmark) || other.bookmark == bookmark));
}


@override
int get hashCode => Object.hash(runtimeType,bookmark);

@override
String toString() {
  return 'BookmarkEvent.getBookmarkDetail(bookmark: $bookmark)';
}


}

/// @nodoc
abstract mixin class _$GetBookmarkDetailCopyWith<$Res> implements $BookmarkEventCopyWith<$Res> {
  factory _$GetBookmarkDetailCopyWith(_GetBookmarkDetail value, $Res Function(_GetBookmarkDetail) _then) = __$GetBookmarkDetailCopyWithImpl;
@useResult
$Res call({
 BookmarkData? bookmark
});


$BookmarkDataCopyWith<$Res>? get bookmark;

}
/// @nodoc
class __$GetBookmarkDetailCopyWithImpl<$Res>
    implements _$GetBookmarkDetailCopyWith<$Res> {
  __$GetBookmarkDetailCopyWithImpl(this._self, this._then);

  final _GetBookmarkDetail _self;
  final $Res Function(_GetBookmarkDetail) _then;

/// Create a copy of BookmarkEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmark = freezed,}) {
  return _then(_GetBookmarkDetail(
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


class _Initial implements BookmarkState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.initial()';
}


}




/// @nodoc


class _Loading implements BookmarkState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.loading()';
}


}




/// @nodoc


class _Loaded implements BookmarkState {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.loaded()';
}


}




/// @nodoc


class _Error implements BookmarkState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BookmarkState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $BookmarkStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DetailAyahLoading implements BookmarkState {
  const _DetailAyahLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailAyahLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.detailAyahLoading()';
}


}




/// @nodoc


class _DetailAyahLoaded implements BookmarkState {
  const _DetailAyahLoaded(this.ayah);
  

 final  Ayah? ayah;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailAyahLoadedCopyWith<_DetailAyahLoaded> get copyWith => __$DetailAyahLoadedCopyWithImpl<_DetailAyahLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailAyahLoaded&&(identical(other.ayah, ayah) || other.ayah == ayah));
}


@override
int get hashCode => Object.hash(runtimeType,ayah);

@override
String toString() {
  return 'BookmarkState.detailAyahLoaded(ayah: $ayah)';
}


}

/// @nodoc
abstract mixin class _$DetailAyahLoadedCopyWith<$Res> implements $BookmarkStateCopyWith<$Res> {
  factory _$DetailAyahLoadedCopyWith(_DetailAyahLoaded value, $Res Function(_DetailAyahLoaded) _then) = __$DetailAyahLoadedCopyWithImpl;
@useResult
$Res call({
 Ayah? ayah
});


$AyahCopyWith<$Res>? get ayah;

}
/// @nodoc
class __$DetailAyahLoadedCopyWithImpl<$Res>
    implements _$DetailAyahLoadedCopyWith<$Res> {
  __$DetailAyahLoadedCopyWithImpl(this._self, this._then);

  final _DetailAyahLoaded _self;
  final $Res Function(_DetailAyahLoaded) _then;

/// Create a copy of BookmarkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ayah = freezed,}) {
  return _then(_DetailAyahLoaded(
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


class _DeleteBookmarkSuccess implements BookmarkState {
  const _DeleteBookmarkSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteBookmarkSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkState.deleteBookmarkSuccess()';
}


}




// dart format on
