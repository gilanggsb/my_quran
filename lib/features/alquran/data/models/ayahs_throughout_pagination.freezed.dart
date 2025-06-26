// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayahs_throughout_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AyahsThroughoutPagination {

@StringToIntConverter() int? get surat;@StringToIntConverter() int? get ayat;@StringToIntConverter() int? get panjang;@JsonKey(includeToJson: false) int? get maxAyat;
/// Create a copy of AyahsThroughoutPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AyahsThroughoutPaginationCopyWith<AyahsThroughoutPagination> get copyWith => _$AyahsThroughoutPaginationCopyWithImpl<AyahsThroughoutPagination>(this as AyahsThroughoutPagination, _$identity);

  /// Serializes this AyahsThroughoutPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AyahsThroughoutPagination&&(identical(other.surat, surat) || other.surat == surat)&&(identical(other.ayat, ayat) || other.ayat == ayat)&&(identical(other.panjang, panjang) || other.panjang == panjang)&&(identical(other.maxAyat, maxAyat) || other.maxAyat == maxAyat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surat,ayat,panjang,maxAyat);

@override
String toString() {
  return 'AyahsThroughoutPagination(surat: $surat, ayat: $ayat, panjang: $panjang, maxAyat: $maxAyat)';
}


}

/// @nodoc
abstract mixin class $AyahsThroughoutPaginationCopyWith<$Res>  {
  factory $AyahsThroughoutPaginationCopyWith(AyahsThroughoutPagination value, $Res Function(AyahsThroughoutPagination) _then) = _$AyahsThroughoutPaginationCopyWithImpl;
@useResult
$Res call({
@StringToIntConverter() int? surat,@StringToIntConverter() int? ayat,@StringToIntConverter() int? panjang,@JsonKey(includeToJson: false) int? maxAyat
});




}
/// @nodoc
class _$AyahsThroughoutPaginationCopyWithImpl<$Res>
    implements $AyahsThroughoutPaginationCopyWith<$Res> {
  _$AyahsThroughoutPaginationCopyWithImpl(this._self, this._then);

  final AyahsThroughoutPagination _self;
  final $Res Function(AyahsThroughoutPagination) _then;

/// Create a copy of AyahsThroughoutPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surat = freezed,Object? ayat = freezed,Object? panjang = freezed,Object? maxAyat = freezed,}) {
  return _then(_self.copyWith(
surat: freezed == surat ? _self.surat : surat // ignore: cast_nullable_to_non_nullable
as int?,ayat: freezed == ayat ? _self.ayat : ayat // ignore: cast_nullable_to_non_nullable
as int?,panjang: freezed == panjang ? _self.panjang : panjang // ignore: cast_nullable_to_non_nullable
as int?,maxAyat: freezed == maxAyat ? _self.maxAyat : maxAyat // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc

@customJsonSerializable
class _AyahsThroughoutPagination implements AyahsThroughoutPagination {
  const _AyahsThroughoutPagination({@StringToIntConverter() this.surat, @StringToIntConverter() this.ayat, @StringToIntConverter() this.panjang, @JsonKey(includeToJson: false) this.maxAyat});
  factory _AyahsThroughoutPagination.fromJson(Map<String, dynamic> json) => _$AyahsThroughoutPaginationFromJson(json);

@override@StringToIntConverter() final  int? surat;
@override@StringToIntConverter() final  int? ayat;
@override@StringToIntConverter() final  int? panjang;
@override@JsonKey(includeToJson: false) final  int? maxAyat;

/// Create a copy of AyahsThroughoutPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AyahsThroughoutPaginationCopyWith<_AyahsThroughoutPagination> get copyWith => __$AyahsThroughoutPaginationCopyWithImpl<_AyahsThroughoutPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AyahsThroughoutPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AyahsThroughoutPagination&&(identical(other.surat, surat) || other.surat == surat)&&(identical(other.ayat, ayat) || other.ayat == ayat)&&(identical(other.panjang, panjang) || other.panjang == panjang)&&(identical(other.maxAyat, maxAyat) || other.maxAyat == maxAyat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surat,ayat,panjang,maxAyat);

@override
String toString() {
  return 'AyahsThroughoutPagination(surat: $surat, ayat: $ayat, panjang: $panjang, maxAyat: $maxAyat)';
}


}

/// @nodoc
abstract mixin class _$AyahsThroughoutPaginationCopyWith<$Res> implements $AyahsThroughoutPaginationCopyWith<$Res> {
  factory _$AyahsThroughoutPaginationCopyWith(_AyahsThroughoutPagination value, $Res Function(_AyahsThroughoutPagination) _then) = __$AyahsThroughoutPaginationCopyWithImpl;
@override @useResult
$Res call({
@StringToIntConverter() int? surat,@StringToIntConverter() int? ayat,@StringToIntConverter() int? panjang,@JsonKey(includeToJson: false) int? maxAyat
});




}
/// @nodoc
class __$AyahsThroughoutPaginationCopyWithImpl<$Res>
    implements _$AyahsThroughoutPaginationCopyWith<$Res> {
  __$AyahsThroughoutPaginationCopyWithImpl(this._self, this._then);

  final _AyahsThroughoutPagination _self;
  final $Res Function(_AyahsThroughoutPagination) _then;

/// Create a copy of AyahsThroughoutPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surat = freezed,Object? ayat = freezed,Object? panjang = freezed,Object? maxAyat = freezed,}) {
  return _then(_AyahsThroughoutPagination(
surat: freezed == surat ? _self.surat : surat // ignore: cast_nullable_to_non_nullable
as int?,ayat: freezed == ayat ? _self.ayat : ayat // ignore: cast_nullable_to_non_nullable
as int?,panjang: freezed == panjang ? _self.panjang : panjang // ignore: cast_nullable_to_non_nullable
as int?,maxAyat: freezed == maxAyat ? _self.maxAyat : maxAyat // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
