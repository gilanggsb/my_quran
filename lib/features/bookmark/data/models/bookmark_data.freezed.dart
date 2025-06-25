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
  @HiveField(0)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get subtitle => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get dataId => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get categoryId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get id => throw _privateConstructorUsedError;

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
      {@HiveField(0) String? title,
      @HiveField(1) String? subtitle,
      @HiveField(2) int? dataId,
      @HiveField(3) String? categoryId,
      @HiveField(4) String? type,
      @HiveField(5) String? id});
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
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@HiveField(0) String? title,
      @HiveField(1) String? subtitle,
      @HiveField(2) int? dataId,
      @HiveField(3) String? categoryId,
      @HiveField(4) String? type,
      @HiveField(5) String? id});
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
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BookmarkDataImpl extends _BookmarkData {
  const _$BookmarkDataImpl(
      {@HiveField(0) this.title,
      @HiveField(1) this.subtitle,
      @HiveField(2) this.dataId,
      @HiveField(3) this.categoryId,
      @HiveField(4) this.type,
      @HiveField(5) this.id})
      : super._();

  @override
  @HiveField(0)
  final String? title;
  @override
  @HiveField(1)
  final String? subtitle;
  @override
  @HiveField(2)
  final int? dataId;
  @override
  @HiveField(3)
  final String? categoryId;
  @override
  @HiveField(4)
  final String? type;
  @override
  @HiveField(5)
  final String? id;

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
      {@HiveField(0) final String? title,
      @HiveField(1) final String? subtitle,
      @HiveField(2) final int? dataId,
      @HiveField(3) final String? categoryId,
      @HiveField(4) final String? type,
      @HiveField(5) final String? id}) = _$BookmarkDataImpl;
  const _BookmarkData._() : super._();

  @override
  @HiveField(0)
  String? get title;
  @override
  @HiveField(1)
  String? get subtitle;
  @override
  @HiveField(2)
  int? get dataId;
  @override
  @HiveField(3)
  String? get categoryId;
  @override
  @HiveField(4)
  String? get type;
  @override
  @HiveField(5)
  String? get id;

  /// Create a copy of BookmarkData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkDataImplCopyWith<_$BookmarkDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
