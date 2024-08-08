// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkCategory {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkCategoryCopyWith<BookmarkCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCategoryCopyWith<$Res> {
  factory $BookmarkCategoryCopyWith(
          BookmarkCategory value, $Res Function(BookmarkCategory) then) =
      _$BookmarkCategoryCopyWithImpl<$Res, BookmarkCategory>;
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class _$BookmarkCategoryCopyWithImpl<$Res, $Val extends BookmarkCategory>
    implements $BookmarkCategoryCopyWith<$Res> {
  _$BookmarkCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkCategoryImplCopyWith<$Res>
    implements $BookmarkCategoryCopyWith<$Res> {
  factory _$$BookmarkCategoryImplCopyWith(_$BookmarkCategoryImpl value,
          $Res Function(_$BookmarkCategoryImpl) then) =
      __$$BookmarkCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class __$$BookmarkCategoryImplCopyWithImpl<$Res>
    extends _$BookmarkCategoryCopyWithImpl<$Res, _$BookmarkCategoryImpl>
    implements _$$BookmarkCategoryImplCopyWith<$Res> {
  __$$BookmarkCategoryImplCopyWithImpl(_$BookmarkCategoryImpl _value,
      $Res Function(_$BookmarkCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$BookmarkCategoryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BookmarkCategoryImpl extends _BookmarkCategory {
  const _$BookmarkCategoryImpl({this.name, this.id}) : super._();

  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'BookmarkCategory(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkCategoryImplCopyWith<_$BookmarkCategoryImpl> get copyWith =>
      __$$BookmarkCategoryImplCopyWithImpl<_$BookmarkCategoryImpl>(
          this, _$identity);
}

abstract class _BookmarkCategory extends BookmarkCategory {
  const factory _BookmarkCategory({final String? name, final int? id}) =
      _$BookmarkCategoryImpl;
  const _BookmarkCategory._() : super._();

  @override
  String? get name;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkCategoryImplCopyWith<_$BookmarkCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}