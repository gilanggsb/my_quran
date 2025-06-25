// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkType {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkTypeCopyWith<BookmarkType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkTypeCopyWith<$Res> {
  factory $BookmarkTypeCopyWith(
          BookmarkType value, $Res Function(BookmarkType) then) =
      _$BookmarkTypeCopyWithImpl<$Res, BookmarkType>;
  @useResult
  $Res call({@HiveField(0) String? name, @HiveField(1) String? id});
}

/// @nodoc
class _$BookmarkTypeCopyWithImpl<$Res, $Val extends BookmarkType>
    implements $BookmarkTypeCopyWith<$Res> {
  _$BookmarkTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkTypeImplCopyWith<$Res>
    implements $BookmarkTypeCopyWith<$Res> {
  factory _$$BookmarkTypeImplCopyWith(
          _$BookmarkTypeImpl value, $Res Function(_$BookmarkTypeImpl) then) =
      __$$BookmarkTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? name, @HiveField(1) String? id});
}

/// @nodoc
class __$$BookmarkTypeImplCopyWithImpl<$Res>
    extends _$BookmarkTypeCopyWithImpl<$Res, _$BookmarkTypeImpl>
    implements _$$BookmarkTypeImplCopyWith<$Res> {
  __$$BookmarkTypeImplCopyWithImpl(
      _$BookmarkTypeImpl _value, $Res Function(_$BookmarkTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$BookmarkTypeImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BookmarkTypeImpl extends _BookmarkType {
  const _$BookmarkTypeImpl({@HiveField(0) this.name, @HiveField(1) this.id})
      : super._();

  @override
  @HiveField(0)
  final String? name;
  @override
  @HiveField(1)
  final String? id;

  @override
  String toString() {
    return 'BookmarkType(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkTypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of BookmarkType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkTypeImplCopyWith<_$BookmarkTypeImpl> get copyWith =>
      __$$BookmarkTypeImplCopyWithImpl<_$BookmarkTypeImpl>(this, _$identity);
}

abstract class _BookmarkType extends BookmarkType {
  const factory _BookmarkType(
      {@HiveField(0) final String? name,
      @HiveField(1) final String? id}) = _$BookmarkTypeImpl;
  const _BookmarkType._() : super._();

  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  String? get id;

  /// Create a copy of BookmarkType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkTypeImplCopyWith<_$BookmarkTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
