// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkData {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  int? get dataId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkDataCopyWith<BookmarkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkDataCopyWith<$Res> {
  factory $BookmarkDataCopyWith(
          BookmarkData value, $Res Function(BookmarkData) then) =
      _$BookmarkDataCopyWithImpl<$Res, BookmarkData>;
  @useResult
  $Res call(
      {String? title,
      String? subtitle,
      int? dataId,
      int? categoryId,
      int? type,
      int? id});
}

/// @nodoc
class _$BookmarkDataCopyWithImpl<$Res, $Val extends BookmarkData>
    implements $BookmarkDataCopyWith<$Res> {
  _$BookmarkDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? dataId = freezed,
    Object? categoryId = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkDataImplCopyWith<$Res>
    implements $BookmarkDataCopyWith<$Res> {
  factory _$$BookmarkDataImplCopyWith(
          _$BookmarkDataImpl value, $Res Function(_$BookmarkDataImpl) then) =
      __$$BookmarkDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? subtitle,
      int? dataId,
      int? categoryId,
      int? type,
      int? id});
}

/// @nodoc
class __$$BookmarkDataImplCopyWithImpl<$Res>
    extends _$BookmarkDataCopyWithImpl<$Res, _$BookmarkDataImpl>
    implements _$$BookmarkDataImplCopyWith<$Res> {
  __$$BookmarkDataImplCopyWithImpl(
      _$BookmarkDataImpl _value, $Res Function(_$BookmarkDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? dataId = freezed,
    Object? categoryId = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_$BookmarkDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BookmarkDataImpl extends _BookmarkData {
  const _$BookmarkDataImpl(
      {this.title,
      this.subtitle,
      this.dataId,
      this.categoryId,
      this.type,
      this.id})
      : super._();

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final int? dataId;
  @override
  final int? categoryId;
  @override
  final int? type;
  @override
  final int? id;

  @override
  String toString() {
    return 'BookmarkData(title: $title, subtitle: $subtitle, dataId: $dataId, categoryId: $categoryId, type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, dataId, categoryId, type, id);

  /// Create a copy of BookmarkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkDataImplCopyWith<_$BookmarkDataImpl> get copyWith =>
      __$$BookmarkDataImplCopyWithImpl<_$BookmarkDataImpl>(this, _$identity);
}

abstract class _BookmarkData extends BookmarkData {
  const factory _BookmarkData(
      {final String? title,
      final String? subtitle,
      final int? dataId,
      final int? categoryId,
      final int? type,
      final int? id}) = _$BookmarkDataImpl;
  const _BookmarkData._() : super._();

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  int? get dataId;
  @override
  int? get categoryId;
  @override
  int? get type;
  @override
  int? get id;

  /// Create a copy of BookmarkData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkDataImplCopyWith<_$BookmarkDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
