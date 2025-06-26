// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookmarkType {

@HiveField(0) String? get name;@HiveField(1) String? get id;
/// Create a copy of BookmarkType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkTypeCopyWith<BookmarkType> get copyWith => _$BookmarkTypeCopyWithImpl<BookmarkType>(this as BookmarkType, _$identity);

  /// Serializes this BookmarkType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkType&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'BookmarkType(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class $BookmarkTypeCopyWith<$Res>  {
  factory $BookmarkTypeCopyWith(BookmarkType value, $Res Function(BookmarkType) _then) = _$BookmarkTypeCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String? name,@HiveField(1) String? id
});




}
/// @nodoc
class _$BookmarkTypeCopyWithImpl<$Res>
    implements $BookmarkTypeCopyWith<$Res> {
  _$BookmarkTypeCopyWithImpl(this._self, this._then);

  final BookmarkType _self;
  final $Res Function(BookmarkType) _then;

/// Create a copy of BookmarkType
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
class _BookmarkType extends BookmarkType {
  const _BookmarkType({@HiveField(0) this.name, @HiveField(1) this.id}): super._();
  factory _BookmarkType.fromJson(Map<String, dynamic> json) => _$BookmarkTypeFromJson(json);

@override@HiveField(0) final  String? name;
@override@HiveField(1) final  String? id;

/// Create a copy of BookmarkType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkTypeCopyWith<_BookmarkType> get copyWith => __$BookmarkTypeCopyWithImpl<_BookmarkType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookmarkTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkType&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'BookmarkType(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class _$BookmarkTypeCopyWith<$Res> implements $BookmarkTypeCopyWith<$Res> {
  factory _$BookmarkTypeCopyWith(_BookmarkType value, $Res Function(_BookmarkType) _then) = __$BookmarkTypeCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String? name,@HiveField(1) String? id
});




}
/// @nodoc
class __$BookmarkTypeCopyWithImpl<$Res>
    implements _$BookmarkTypeCopyWith<$Res> {
  __$BookmarkTypeCopyWithImpl(this._self, this._then);

  final _BookmarkType _self;
  final $Res Function(_BookmarkType) _then;

/// Create a copy of BookmarkType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? id = freezed,}) {
  return _then(_BookmarkType(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
