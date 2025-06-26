// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookmarkCategory {

@HiveField(0) String? get name;@HiveField(1) String? get id;
/// Create a copy of BookmarkCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkCategoryCopyWith<BookmarkCategory> get copyWith => _$BookmarkCategoryCopyWithImpl<BookmarkCategory>(this as BookmarkCategory, _$identity);

  /// Serializes this BookmarkCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'BookmarkCategory(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class $BookmarkCategoryCopyWith<$Res>  {
  factory $BookmarkCategoryCopyWith(BookmarkCategory value, $Res Function(BookmarkCategory) _then) = _$BookmarkCategoryCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String? name,@HiveField(1) String? id
});




}
/// @nodoc
class _$BookmarkCategoryCopyWithImpl<$Res>
    implements $BookmarkCategoryCopyWith<$Res> {
  _$BookmarkCategoryCopyWithImpl(this._self, this._then);

  final BookmarkCategory _self;
  final $Res Function(BookmarkCategory) _then;

/// Create a copy of BookmarkCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@customJsonSerializable
class _BookmarkCategory extends BookmarkCategory {
  const _BookmarkCategory({@HiveField(0) this.name, @HiveField(1) this.id}): super._();
  factory _BookmarkCategory.fromJson(Map<String, dynamic> json) => _$BookmarkCategoryFromJson(json);

@override@HiveField(0) final  String? name;
@override@HiveField(1) final  String? id;

/// Create a copy of BookmarkCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkCategoryCopyWith<_BookmarkCategory> get copyWith => __$BookmarkCategoryCopyWithImpl<_BookmarkCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookmarkCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'BookmarkCategory(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class _$BookmarkCategoryCopyWith<$Res> implements $BookmarkCategoryCopyWith<$Res> {
  factory _$BookmarkCategoryCopyWith(_BookmarkCategory value, $Res Function(_BookmarkCategory) _then) = __$BookmarkCategoryCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String? name,@HiveField(1) String? id
});




}
/// @nodoc
class __$BookmarkCategoryCopyWithImpl<$Res>
    implements _$BookmarkCategoryCopyWith<$Res> {
  __$BookmarkCategoryCopyWithImpl(this._self, this._then);

  final _BookmarkCategory _self;
  final $Res Function(_BookmarkCategory) _then;

/// Create a copy of BookmarkCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? id = freezed,}) {
  return _then(_BookmarkCategory(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
