// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? categoryId) getData,
    required TResult Function(int? bookmarkId) deleteBookmark,
    required TResult Function(BookmarkData? bookmark) getBookmarkDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? categoryId)? getData,
    TResult? Function(int? bookmarkId)? deleteBookmark,
    TResult? Function(BookmarkData? bookmark)? getBookmarkDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? categoryId)? getData,
    TResult Function(int? bookmarkId)? deleteBookmark,
    TResult Function(BookmarkData? bookmark)? getBookmarkDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetData value) getData,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
    required TResult Function(_GetBookmarkDetail value) getBookmarkDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
    TResult? Function(_GetBookmarkDetail value)? getBookmarkDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetData value)? getData,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    TResult Function(_GetBookmarkDetail value)? getBookmarkDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BookmarkEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? categoryId) getData,
    required TResult Function(int? bookmarkId) deleteBookmark,
    required TResult Function(BookmarkData? bookmark) getBookmarkDetail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? categoryId)? getData,
    TResult? Function(int? bookmarkId)? deleteBookmark,
    TResult? Function(BookmarkData? bookmark)? getBookmarkDetail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? categoryId)? getData,
    TResult Function(int? bookmarkId)? deleteBookmark,
    TResult Function(BookmarkData? bookmark)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetData value) getData,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
    required TResult Function(_GetBookmarkDetail value) getBookmarkDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
    TResult? Function(_GetBookmarkDetail value)? getBookmarkDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetData value)? getData,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    TResult Function(_GetBookmarkDetail value)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookmarkEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? categoryId});
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$GetDataImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl({this.categoryId});

  @override
  final int? categoryId;

  @override
  String toString() {
    return 'BookmarkEvent.getData(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      __$$GetDataImplCopyWithImpl<_$GetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? categoryId) getData,
    required TResult Function(int? bookmarkId) deleteBookmark,
    required TResult Function(BookmarkData? bookmark) getBookmarkDetail,
  }) {
    return getData(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? categoryId)? getData,
    TResult? Function(int? bookmarkId)? deleteBookmark,
    TResult? Function(BookmarkData? bookmark)? getBookmarkDetail,
  }) {
    return getData?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? categoryId)? getData,
    TResult Function(int? bookmarkId)? deleteBookmark,
    TResult Function(BookmarkData? bookmark)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetData value) getData,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
    required TResult Function(_GetBookmarkDetail value) getBookmarkDetail,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
    TResult? Function(_GetBookmarkDetail value)? getBookmarkDetail,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetData value)? getData,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    TResult Function(_GetBookmarkDetail value)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements BookmarkEvent {
  const factory _GetData({final int? categoryId}) = _$GetDataImpl;

  int? get categoryId;
  @JsonKey(ignore: true)
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBookmarkImplCopyWith<$Res> {
  factory _$$DeleteBookmarkImplCopyWith(_$DeleteBookmarkImpl value,
          $Res Function(_$DeleteBookmarkImpl) then) =
      __$$DeleteBookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? bookmarkId});
}

/// @nodoc
class __$$DeleteBookmarkImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$DeleteBookmarkImpl>
    implements _$$DeleteBookmarkImplCopyWith<$Res> {
  __$$DeleteBookmarkImplCopyWithImpl(
      _$DeleteBookmarkImpl _value, $Res Function(_$DeleteBookmarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkId = freezed,
  }) {
    return _then(_$DeleteBookmarkImpl(
      bookmarkId: freezed == bookmarkId
          ? _value.bookmarkId
          : bookmarkId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeleteBookmarkImpl implements _DeleteBookmark {
  const _$DeleteBookmarkImpl({this.bookmarkId});

  @override
  final int? bookmarkId;

  @override
  String toString() {
    return 'BookmarkEvent.deleteBookmark(bookmarkId: $bookmarkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkImpl &&
            (identical(other.bookmarkId, bookmarkId) ||
                other.bookmarkId == bookmarkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookmarkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookmarkImplCopyWith<_$DeleteBookmarkImpl> get copyWith =>
      __$$DeleteBookmarkImplCopyWithImpl<_$DeleteBookmarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? categoryId) getData,
    required TResult Function(int? bookmarkId) deleteBookmark,
    required TResult Function(BookmarkData? bookmark) getBookmarkDetail,
  }) {
    return deleteBookmark(bookmarkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? categoryId)? getData,
    TResult? Function(int? bookmarkId)? deleteBookmark,
    TResult? Function(BookmarkData? bookmark)? getBookmarkDetail,
  }) {
    return deleteBookmark?.call(bookmarkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? categoryId)? getData,
    TResult Function(int? bookmarkId)? deleteBookmark,
    TResult Function(BookmarkData? bookmark)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (deleteBookmark != null) {
      return deleteBookmark(bookmarkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetData value) getData,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
    required TResult Function(_GetBookmarkDetail value) getBookmarkDetail,
  }) {
    return deleteBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
    TResult? Function(_GetBookmarkDetail value)? getBookmarkDetail,
  }) {
    return deleteBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetData value)? getData,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    TResult Function(_GetBookmarkDetail value)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (deleteBookmark != null) {
      return deleteBookmark(this);
    }
    return orElse();
  }
}

abstract class _DeleteBookmark implements BookmarkEvent {
  const factory _DeleteBookmark({final int? bookmarkId}) = _$DeleteBookmarkImpl;

  int? get bookmarkId;
  @JsonKey(ignore: true)
  _$$DeleteBookmarkImplCopyWith<_$DeleteBookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookmarkDetailImplCopyWith<$Res> {
  factory _$$GetBookmarkDetailImplCopyWith(_$GetBookmarkDetailImpl value,
          $Res Function(_$GetBookmarkDetailImpl) then) =
      __$$GetBookmarkDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookmarkData? bookmark});

  $BookmarkDataCopyWith<$Res>? get bookmark;
}

/// @nodoc
class __$$GetBookmarkDetailImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$GetBookmarkDetailImpl>
    implements _$$GetBookmarkDetailImplCopyWith<$Res> {
  __$$GetBookmarkDetailImplCopyWithImpl(_$GetBookmarkDetailImpl _value,
      $Res Function(_$GetBookmarkDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = freezed,
  }) {
    return _then(_$GetBookmarkDetailImpl(
      bookmark: freezed == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as BookmarkData?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookmarkDataCopyWith<$Res>? get bookmark {
    if (_value.bookmark == null) {
      return null;
    }

    return $BookmarkDataCopyWith<$Res>(_value.bookmark!, (value) {
      return _then(_value.copyWith(bookmark: value));
    });
  }
}

/// @nodoc

class _$GetBookmarkDetailImpl implements _GetBookmarkDetail {
  const _$GetBookmarkDetailImpl({this.bookmark});

  @override
  final BookmarkData? bookmark;

  @override
  String toString() {
    return 'BookmarkEvent.getBookmarkDetail(bookmark: $bookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookmarkDetailImpl &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookmark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookmarkDetailImplCopyWith<_$GetBookmarkDetailImpl> get copyWith =>
      __$$GetBookmarkDetailImplCopyWithImpl<_$GetBookmarkDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? categoryId) getData,
    required TResult Function(int? bookmarkId) deleteBookmark,
    required TResult Function(BookmarkData? bookmark) getBookmarkDetail,
  }) {
    return getBookmarkDetail(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? categoryId)? getData,
    TResult? Function(int? bookmarkId)? deleteBookmark,
    TResult? Function(BookmarkData? bookmark)? getBookmarkDetail,
  }) {
    return getBookmarkDetail?.call(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? categoryId)? getData,
    TResult Function(int? bookmarkId)? deleteBookmark,
    TResult Function(BookmarkData? bookmark)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (getBookmarkDetail != null) {
      return getBookmarkDetail(bookmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetData value) getData,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
    required TResult Function(_GetBookmarkDetail value) getBookmarkDetail,
  }) {
    return getBookmarkDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
    TResult? Function(_GetBookmarkDetail value)? getBookmarkDetail,
  }) {
    return getBookmarkDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetData value)? getData,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    TResult Function(_GetBookmarkDetail value)? getBookmarkDetail,
    required TResult orElse(),
  }) {
    if (getBookmarkDetail != null) {
      return getBookmarkDetail(this);
    }
    return orElse();
  }
}

abstract class _GetBookmarkDetail implements BookmarkEvent {
  const factory _GetBookmarkDetail({final BookmarkData? bookmark}) =
      _$GetBookmarkDetailImpl;

  BookmarkData? get bookmark;
  @JsonKey(ignore: true)
  _$$GetBookmarkDetailImplCopyWith<_$GetBookmarkDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookmarkState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookmarkState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BookmarkState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BookmarkState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'BookmarkState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BookmarkState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookmarkState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Error implements BookmarkState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailAyahLoadingImplCopyWith<$Res> {
  factory _$$DetailAyahLoadingImplCopyWith(_$DetailAyahLoadingImpl value,
          $Res Function(_$DetailAyahLoadingImpl) then) =
      __$$DetailAyahLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailAyahLoadingImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$DetailAyahLoadingImpl>
    implements _$$DetailAyahLoadingImplCopyWith<$Res> {
  __$$DetailAyahLoadingImplCopyWithImpl(_$DetailAyahLoadingImpl _value,
      $Res Function(_$DetailAyahLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailAyahLoadingImpl implements _DetailAyahLoading {
  const _$DetailAyahLoadingImpl();

  @override
  String toString() {
    return 'BookmarkState.detailAyahLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailAyahLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return detailAyahLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return detailAyahLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (detailAyahLoading != null) {
      return detailAyahLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return detailAyahLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return detailAyahLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (detailAyahLoading != null) {
      return detailAyahLoading(this);
    }
    return orElse();
  }
}

abstract class _DetailAyahLoading implements BookmarkState {
  const factory _DetailAyahLoading() = _$DetailAyahLoadingImpl;
}

/// @nodoc
abstract class _$$DetailAyahLoadedImplCopyWith<$Res> {
  factory _$$DetailAyahLoadedImplCopyWith(_$DetailAyahLoadedImpl value,
          $Res Function(_$DetailAyahLoadedImpl) then) =
      __$$DetailAyahLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ayah? ayah});

  $AyahCopyWith<$Res>? get ayah;
}

/// @nodoc
class __$$DetailAyahLoadedImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$DetailAyahLoadedImpl>
    implements _$$DetailAyahLoadedImplCopyWith<$Res> {
  __$$DetailAyahLoadedImplCopyWithImpl(_$DetailAyahLoadedImpl _value,
      $Res Function(_$DetailAyahLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayah = freezed,
  }) {
    return _then(_$DetailAyahLoadedImpl(
      freezed == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AyahCopyWith<$Res>? get ayah {
    if (_value.ayah == null) {
      return null;
    }

    return $AyahCopyWith<$Res>(_value.ayah!, (value) {
      return _then(_value.copyWith(ayah: value));
    });
  }
}

/// @nodoc

class _$DetailAyahLoadedImpl implements _DetailAyahLoaded {
  const _$DetailAyahLoadedImpl(this.ayah);

  @override
  final Ayah? ayah;

  @override
  String toString() {
    return 'BookmarkState.detailAyahLoaded(ayah: $ayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailAyahLoadedImpl &&
            (identical(other.ayah, ayah) || other.ayah == ayah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailAyahLoadedImplCopyWith<_$DetailAyahLoadedImpl> get copyWith =>
      __$$DetailAyahLoadedImplCopyWithImpl<_$DetailAyahLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return detailAyahLoaded(ayah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return detailAyahLoaded?.call(ayah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (detailAyahLoaded != null) {
      return detailAyahLoaded(ayah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return detailAyahLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return detailAyahLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (detailAyahLoaded != null) {
      return detailAyahLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailAyahLoaded implements BookmarkState {
  const factory _DetailAyahLoaded(final Ayah? ayah) = _$DetailAyahLoadedImpl;

  Ayah? get ayah;
  @JsonKey(ignore: true)
  _$$DetailAyahLoadedImplCopyWith<_$DetailAyahLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBookmarkSuccessImplCopyWith<$Res> {
  factory _$$DeleteBookmarkSuccessImplCopyWith(
          _$DeleteBookmarkSuccessImpl value,
          $Res Function(_$DeleteBookmarkSuccessImpl) then) =
      __$$DeleteBookmarkSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteBookmarkSuccessImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$DeleteBookmarkSuccessImpl>
    implements _$$DeleteBookmarkSuccessImplCopyWith<$Res> {
  __$$DeleteBookmarkSuccessImplCopyWithImpl(_$DeleteBookmarkSuccessImpl _value,
      $Res Function(_$DeleteBookmarkSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteBookmarkSuccessImpl implements _DeleteBookmarkSuccess {
  const _$DeleteBookmarkSuccessImpl();

  @override
  String toString() {
    return 'BookmarkState.deleteBookmarkSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) failed,
    required TResult Function() detailAyahLoading,
    required TResult Function(Ayah? ayah) detailAyahLoaded,
    required TResult Function() deleteBookmarkSuccess,
  }) {
    return deleteBookmarkSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? failed,
    TResult? Function()? detailAyahLoading,
    TResult? Function(Ayah? ayah)? detailAyahLoaded,
    TResult? Function()? deleteBookmarkSuccess,
  }) {
    return deleteBookmarkSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? failed,
    TResult Function()? detailAyahLoading,
    TResult Function(Ayah? ayah)? detailAyahLoaded,
    TResult Function()? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (deleteBookmarkSuccess != null) {
      return deleteBookmarkSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) failed,
    required TResult Function(_DetailAyahLoading value) detailAyahLoading,
    required TResult Function(_DetailAyahLoaded value) detailAyahLoaded,
    required TResult Function(_DeleteBookmarkSuccess value)
        deleteBookmarkSuccess,
  }) {
    return deleteBookmarkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? failed,
    TResult? Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult? Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult? Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
  }) {
    return deleteBookmarkSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? failed,
    TResult Function(_DetailAyahLoading value)? detailAyahLoading,
    TResult Function(_DetailAyahLoaded value)? detailAyahLoaded,
    TResult Function(_DeleteBookmarkSuccess value)? deleteBookmarkSuccess,
    required TResult orElse(),
  }) {
    if (deleteBookmarkSuccess != null) {
      return deleteBookmarkSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteBookmarkSuccess implements BookmarkState {
  const factory _DeleteBookmarkSuccess() = _$DeleteBookmarkSuccessImpl;
}
