// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyahPagination _$AyahPaginationFromJson(Map<String, dynamic> json) {
  return _AyahPagination.fromJson(json);
}

/// @nodoc
mixin _$AyahPagination {
  int? get page => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  /// Serializes this AyahPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AyahPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahPaginationCopyWith<AyahPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahPaginationCopyWith<$Res> {
  factory $AyahPaginationCopyWith(
          AyahPagination value, $Res Function(AyahPagination) then) =
      _$AyahPaginationCopyWithImpl<$Res, AyahPagination>;
  @useResult
  $Res call({int? page, int? length});
}

/// @nodoc
class _$AyahPaginationCopyWithImpl<$Res, $Val extends AyahPagination>
    implements $AyahPaginationCopyWith<$Res> {
  _$AyahPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AyahPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahPaginationImplCopyWith<$Res>
    implements $AyahPaginationCopyWith<$Res> {
  factory _$$AyahPaginationImplCopyWith(_$AyahPaginationImpl value,
          $Res Function(_$AyahPaginationImpl) then) =
      __$$AyahPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? length});
}

/// @nodoc
class __$$AyahPaginationImplCopyWithImpl<$Res>
    extends _$AyahPaginationCopyWithImpl<$Res, _$AyahPaginationImpl>
    implements _$$AyahPaginationImplCopyWith<$Res> {
  __$$AyahPaginationImplCopyWithImpl(
      _$AyahPaginationImpl _value, $Res Function(_$AyahPaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AyahPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? length = freezed,
  }) {
    return _then(_$AyahPaginationImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahPaginationImpl implements _AyahPagination {
  const _$AyahPaginationImpl({this.page, this.length});

  factory _$AyahPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahPaginationImplFromJson(json);

  @override
  final int? page;
  @override
  final int? length;

  @override
  String toString() {
    return 'AyahPagination(page: $page, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahPaginationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, length);

  /// Create a copy of AyahPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahPaginationImplCopyWith<_$AyahPaginationImpl> get copyWith =>
      __$$AyahPaginationImplCopyWithImpl<_$AyahPaginationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahPaginationImplToJson(
      this,
    );
  }
}

abstract class _AyahPagination implements AyahPagination {
  const factory _AyahPagination({final int? page, final int? length}) =
      _$AyahPaginationImpl;

  factory _AyahPagination.fromJson(Map<String, dynamic> json) =
      _$AyahPaginationImpl.fromJson;

  @override
  int? get page;
  @override
  int? get length;

  /// Create a copy of AyahPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahPaginationImplCopyWith<_$AyahPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
