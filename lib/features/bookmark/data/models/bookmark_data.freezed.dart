// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookmarkData {

@HiveField(0) String? get title;@HiveField(1) String? get subtitle;@HiveField(2) int? get dataId;@HiveField(3) String? get categoryId;@HiveField(4) String? get type;@HiveField(5) String? get id;
/// Create a copy of BookmarkData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkDataCopyWith<BookmarkData> get copyWith => _$BookmarkDataCopyWithImpl<BookmarkData>(this as BookmarkData, _$identity);

  /// Serializes this BookmarkData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkData&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,dataId,categoryId,type,id);

@override
String toString() {
  return 'BookmarkData(title: $title, subtitle: $subtitle, dataId: $dataId, categoryId: $categoryId, type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class $BookmarkDataCopyWith<$Res>  {
  factory $BookmarkDataCopyWith(BookmarkData value, $Res Function(BookmarkData) _then) = _$BookmarkDataCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String? title,@HiveField(1) String? subtitle,@HiveField(2) int? dataId,@HiveField(3) String? categoryId,@HiveField(4) String? type,@HiveField(5) String? id
});




}
/// @nodoc
class _$BookmarkDataCopyWithImpl<$Res>
    implements $BookmarkDataCopyWith<$Res> {
  _$BookmarkDataCopyWithImpl(this._self, this._then);

  final BookmarkData _self;
  final $Res Function(BookmarkData) _then;

/// Create a copy of BookmarkData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? subtitle = freezed,Object? dataId = freezed,Object? categoryId = freezed,Object? type = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@customJsonSerializable
class _BookmarkData extends BookmarkData {
  const _BookmarkData({@HiveField(0) this.title, @HiveField(1) this.subtitle, @HiveField(2) this.dataId, @HiveField(3) this.categoryId, @HiveField(4) this.type, @HiveField(5) this.id}): super._();
  factory _BookmarkData.fromJson(Map<String, dynamic> json) => _$BookmarkDataFromJson(json);

@override@HiveField(0) final  String? title;
@override@HiveField(1) final  String? subtitle;
@override@HiveField(2) final  int? dataId;
@override@HiveField(3) final  String? categoryId;
@override@HiveField(4) final  String? type;
@override@HiveField(5) final  String? id;

/// Create a copy of BookmarkData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkDataCopyWith<_BookmarkData> get copyWith => __$BookmarkDataCopyWithImpl<_BookmarkData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookmarkDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkData&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,dataId,categoryId,type,id);

@override
String toString() {
  return 'BookmarkData(title: $title, subtitle: $subtitle, dataId: $dataId, categoryId: $categoryId, type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class _$BookmarkDataCopyWith<$Res> implements $BookmarkDataCopyWith<$Res> {
  factory _$BookmarkDataCopyWith(_BookmarkData value, $Res Function(_BookmarkData) _then) = __$BookmarkDataCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String? title,@HiveField(1) String? subtitle,@HiveField(2) int? dataId,@HiveField(3) String? categoryId,@HiveField(4) String? type,@HiveField(5) String? id
});




}
/// @nodoc
class __$BookmarkDataCopyWithImpl<$Res>
    implements _$BookmarkDataCopyWith<$Res> {
  __$BookmarkDataCopyWithImpl(this._self, this._then);

  final _BookmarkData _self;
  final $Res Function(_BookmarkData) _then;

/// Create a copy of BookmarkData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? subtitle = freezed,Object? dataId = freezed,Object? categoryId = freezed,Object? type = freezed,Object? id = freezed,}) {
  return _then(_BookmarkData(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
