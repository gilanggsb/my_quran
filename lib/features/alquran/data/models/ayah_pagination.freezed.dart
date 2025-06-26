// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AyahPagination {

 int? get page; int? get length;
/// Create a copy of AyahPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AyahPaginationCopyWith<AyahPagination> get copyWith => _$AyahPaginationCopyWithImpl<AyahPagination>(this as AyahPagination, _$identity);

  /// Serializes this AyahPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AyahPagination&&(identical(other.page, page) || other.page == page)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,length);

@override
String toString() {
  return 'AyahPagination(page: $page, length: $length)';
}


}

/// @nodoc
abstract mixin class $AyahPaginationCopyWith<$Res>  {
  factory $AyahPaginationCopyWith(AyahPagination value, $Res Function(AyahPagination) _then) = _$AyahPaginationCopyWithImpl;
@useResult
$Res call({
 int? page, int? length
});




}
/// @nodoc
class _$AyahPaginationCopyWithImpl<$Res>
    implements $AyahPaginationCopyWith<$Res> {
  _$AyahPaginationCopyWithImpl(this._self, this._then);

  final AyahPagination _self;
  final $Res Function(AyahPagination) _then;

/// Create a copy of AyahPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? length = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc

@customJsonSerializable
class _AyahPagination implements AyahPagination {
  const _AyahPagination({this.page, this.length});
  factory _AyahPagination.fromJson(Map<String, dynamic> json) => _$AyahPaginationFromJson(json);

@override final  int? page;
@override final  int? length;

/// Create a copy of AyahPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AyahPaginationCopyWith<_AyahPagination> get copyWith => __$AyahPaginationCopyWithImpl<_AyahPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AyahPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AyahPagination&&(identical(other.page, page) || other.page == page)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,length);

@override
String toString() {
  return 'AyahPagination(page: $page, length: $length)';
}


}

/// @nodoc
abstract mixin class _$AyahPaginationCopyWith<$Res> implements $AyahPaginationCopyWith<$Res> {
  factory _$AyahPaginationCopyWith(_AyahPagination value, $Res Function(_AyahPagination) _then) = __$AyahPaginationCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? length
});




}
/// @nodoc
class __$AyahPaginationCopyWithImpl<$Res>
    implements _$AyahPaginationCopyWith<$Res> {
  __$AyahPaginationCopyWithImpl(this._self, this._then);

  final _AyahPagination _self;
  final $Res Function(_AyahPagination) _then;

/// Create a copy of AyahPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? length = freezed,}) {
  return _then(_AyahPagination(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
