// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Quran {

@StringToIntConverter() int? get number; String? get title; String? get arabic; int? get arabicMaxLine; String? get subtitle; String? get titleAr; bool? get isPreview;
/// Create a copy of Quran
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranCopyWith<Quran> get copyWith => _$QuranCopyWithImpl<Quran>(this as Quran, _$identity);

  /// Serializes this Quran to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Quran&&(identical(other.number, number) || other.number == number)&&(identical(other.title, title) || other.title == title)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.arabicMaxLine, arabicMaxLine) || other.arabicMaxLine == arabicMaxLine)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,title,arabic,arabicMaxLine,subtitle,titleAr,isPreview);

@override
String toString() {
  return 'Quran(number: $number, title: $title, arabic: $arabic, arabicMaxLine: $arabicMaxLine, subtitle: $subtitle, titleAr: $titleAr, isPreview: $isPreview)';
}


}

/// @nodoc
abstract mixin class $QuranCopyWith<$Res>  {
  factory $QuranCopyWith(Quran value, $Res Function(Quran) _then) = _$QuranCopyWithImpl;
@useResult
$Res call({
@StringToIntConverter() int? number, String? title, String? arabic, int? arabicMaxLine, String? subtitle, String? titleAr, bool? isPreview
});




}
/// @nodoc
class _$QuranCopyWithImpl<$Res>
    implements $QuranCopyWith<$Res> {
  _$QuranCopyWithImpl(this._self, this._then);

  final Quran _self;
  final $Res Function(Quran) _then;

/// Create a copy of Quran
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? title = freezed,Object? arabic = freezed,Object? arabicMaxLine = freezed,Object? subtitle = freezed,Object? titleAr = freezed,Object? isPreview = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,arabic: freezed == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as String?,arabicMaxLine: freezed == arabicMaxLine ? _self.arabicMaxLine : arabicMaxLine // ignore: cast_nullable_to_non_nullable
as int?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,titleAr: freezed == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String?,isPreview: freezed == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Quran implements Quran {
  const _Quran({@StringToIntConverter() this.number, this.title, this.arabic, this.arabicMaxLine, this.subtitle, this.titleAr, this.isPreview});
  factory _Quran.fromJson(Map<String, dynamic> json) => _$QuranFromJson(json);

@override@StringToIntConverter() final  int? number;
@override final  String? title;
@override final  String? arabic;
@override final  int? arabicMaxLine;
@override final  String? subtitle;
@override final  String? titleAr;
@override final  bool? isPreview;

/// Create a copy of Quran
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuranCopyWith<_Quran> get copyWith => __$QuranCopyWithImpl<_Quran>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuranToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Quran&&(identical(other.number, number) || other.number == number)&&(identical(other.title, title) || other.title == title)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.arabicMaxLine, arabicMaxLine) || other.arabicMaxLine == arabicMaxLine)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,title,arabic,arabicMaxLine,subtitle,titleAr,isPreview);

@override
String toString() {
  return 'Quran(number: $number, title: $title, arabic: $arabic, arabicMaxLine: $arabicMaxLine, subtitle: $subtitle, titleAr: $titleAr, isPreview: $isPreview)';
}


}

/// @nodoc
abstract mixin class _$QuranCopyWith<$Res> implements $QuranCopyWith<$Res> {
  factory _$QuranCopyWith(_Quran value, $Res Function(_Quran) _then) = __$QuranCopyWithImpl;
@override @useResult
$Res call({
@StringToIntConverter() int? number, String? title, String? arabic, int? arabicMaxLine, String? subtitle, String? titleAr, bool? isPreview
});




}
/// @nodoc
class __$QuranCopyWithImpl<$Res>
    implements _$QuranCopyWith<$Res> {
  __$QuranCopyWithImpl(this._self, this._then);

  final _Quran _self;
  final $Res Function(_Quran) _then;

/// Create a copy of Quran
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? title = freezed,Object? arabic = freezed,Object? arabicMaxLine = freezed,Object? subtitle = freezed,Object? titleAr = freezed,Object? isPreview = freezed,}) {
  return _then(_Quran(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,arabic: freezed == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as String?,arabicMaxLine: freezed == arabicMaxLine ? _self.arabicMaxLine : arabicMaxLine // ignore: cast_nullable_to_non_nullable
as int?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,titleAr: freezed == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String?,isPreview: freezed == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
