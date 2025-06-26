// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ayah {

@HiveField(0)@StringToIntConverter() int? get id;// @HiveField(1) int? idInt,
@HiveField(1) String? get arab;@HiveField(2) String? get asbab;@HiveField(3) String? get audio;@HiveField(4)@StringToIntConverter() int? get ayah;// Original string representation
// @HiveField(6) int? ayahInt, // Numerical representation
@HiveField(5)@StringToIntConverter() int? get juz;// Original string representation
// @HiveField(8) int? juzInt, // Numerical representation
@HiveField(6)@StringToIntConverter() int? get surah;// Original string representation
// @HiveField(10) int? surahInt, // Numerical representation
@HiveField(7) String? get latin;@HiveField(8) String? get notes;@HiveField(9) String? get page;@HiveField(10) String? get text;@HiveField(11) String? get theme;
/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AyahCopyWith<Ayah> get copyWith => _$AyahCopyWithImpl<Ayah>(this as Ayah, _$identity);

  /// Serializes this Ayah to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ayah&&(identical(other.id, id) || other.id == id)&&(identical(other.arab, arab) || other.arab == arab)&&(identical(other.asbab, asbab) || other.asbab == asbab)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.ayah, ayah) || other.ayah == ayah)&&(identical(other.juz, juz) || other.juz == juz)&&(identical(other.surah, surah) || other.surah == surah)&&(identical(other.latin, latin) || other.latin == latin)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.page, page) || other.page == page)&&(identical(other.text, text) || other.text == text)&&(identical(other.theme, theme) || other.theme == theme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,arab,asbab,audio,ayah,juz,surah,latin,notes,page,text,theme);

@override
String toString() {
  return 'Ayah(id: $id, arab: $arab, asbab: $asbab, audio: $audio, ayah: $ayah, juz: $juz, surah: $surah, latin: $latin, notes: $notes, page: $page, text: $text, theme: $theme)';
}


}

/// @nodoc
abstract mixin class $AyahCopyWith<$Res>  {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) _then) = _$AyahCopyWithImpl;
@useResult
$Res call({
@HiveField(0)@StringToIntConverter() int? id,@HiveField(1) String? arab,@HiveField(2) String? asbab,@HiveField(3) String? audio,@HiveField(4)@StringToIntConverter() int? ayah,@HiveField(5)@StringToIntConverter() int? juz,@HiveField(6)@StringToIntConverter() int? surah,@HiveField(7) String? latin,@HiveField(8) String? notes,@HiveField(9) String? page,@HiveField(10) String? text,@HiveField(11) String? theme
});




}
/// @nodoc
class _$AyahCopyWithImpl<$Res>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._self, this._then);

  final Ayah _self;
  final $Res Function(Ayah) _then;

/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? arab = freezed,Object? asbab = freezed,Object? audio = freezed,Object? ayah = freezed,Object? juz = freezed,Object? surah = freezed,Object? latin = freezed,Object? notes = freezed,Object? page = freezed,Object? text = freezed,Object? theme = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,arab: freezed == arab ? _self.arab : arab // ignore: cast_nullable_to_non_nullable
as String?,asbab: freezed == asbab ? _self.asbab : asbab // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,ayah: freezed == ayah ? _self.ayah : ayah // ignore: cast_nullable_to_non_nullable
as int?,juz: freezed == juz ? _self.juz : juz // ignore: cast_nullable_to_non_nullable
as int?,surah: freezed == surah ? _self.surah : surah // ignore: cast_nullable_to_non_nullable
as int?,latin: freezed == latin ? _self.latin : latin // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@customJsonSerializable
class _Ayah extends Ayah {
  const _Ayah({@HiveField(0)@StringToIntConverter() this.id, @HiveField(1) this.arab, @HiveField(2) this.asbab, @HiveField(3) this.audio, @HiveField(4)@StringToIntConverter() this.ayah, @HiveField(5)@StringToIntConverter() this.juz, @HiveField(6)@StringToIntConverter() this.surah, @HiveField(7) this.latin, @HiveField(8) this.notes, @HiveField(9) this.page, @HiveField(10) this.text, @HiveField(11) this.theme}): super._();
  factory _Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);

@override@HiveField(0)@StringToIntConverter() final  int? id;
// @HiveField(1) int? idInt,
@override@HiveField(1) final  String? arab;
@override@HiveField(2) final  String? asbab;
@override@HiveField(3) final  String? audio;
@override@HiveField(4)@StringToIntConverter() final  int? ayah;
// Original string representation
// @HiveField(6) int? ayahInt, // Numerical representation
@override@HiveField(5)@StringToIntConverter() final  int? juz;
// Original string representation
// @HiveField(8) int? juzInt, // Numerical representation
@override@HiveField(6)@StringToIntConverter() final  int? surah;
// Original string representation
// @HiveField(10) int? surahInt, // Numerical representation
@override@HiveField(7) final  String? latin;
@override@HiveField(8) final  String? notes;
@override@HiveField(9) final  String? page;
@override@HiveField(10) final  String? text;
@override@HiveField(11) final  String? theme;

/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AyahCopyWith<_Ayah> get copyWith => __$AyahCopyWithImpl<_Ayah>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AyahToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ayah&&(identical(other.id, id) || other.id == id)&&(identical(other.arab, arab) || other.arab == arab)&&(identical(other.asbab, asbab) || other.asbab == asbab)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.ayah, ayah) || other.ayah == ayah)&&(identical(other.juz, juz) || other.juz == juz)&&(identical(other.surah, surah) || other.surah == surah)&&(identical(other.latin, latin) || other.latin == latin)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.page, page) || other.page == page)&&(identical(other.text, text) || other.text == text)&&(identical(other.theme, theme) || other.theme == theme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,arab,asbab,audio,ayah,juz,surah,latin,notes,page,text,theme);

@override
String toString() {
  return 'Ayah(id: $id, arab: $arab, asbab: $asbab, audio: $audio, ayah: $ayah, juz: $juz, surah: $surah, latin: $latin, notes: $notes, page: $page, text: $text, theme: $theme)';
}


}

/// @nodoc
abstract mixin class _$AyahCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$AyahCopyWith(_Ayah value, $Res Function(_Ayah) _then) = __$AyahCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0)@StringToIntConverter() int? id,@HiveField(1) String? arab,@HiveField(2) String? asbab,@HiveField(3) String? audio,@HiveField(4)@StringToIntConverter() int? ayah,@HiveField(5)@StringToIntConverter() int? juz,@HiveField(6)@StringToIntConverter() int? surah,@HiveField(7) String? latin,@HiveField(8) String? notes,@HiveField(9) String? page,@HiveField(10) String? text,@HiveField(11) String? theme
});




}
/// @nodoc
class __$AyahCopyWithImpl<$Res>
    implements _$AyahCopyWith<$Res> {
  __$AyahCopyWithImpl(this._self, this._then);

  final _Ayah _self;
  final $Res Function(_Ayah) _then;

/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? arab = freezed,Object? asbab = freezed,Object? audio = freezed,Object? ayah = freezed,Object? juz = freezed,Object? surah = freezed,Object? latin = freezed,Object? notes = freezed,Object? page = freezed,Object? text = freezed,Object? theme = freezed,}) {
  return _then(_Ayah(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,arab: freezed == arab ? _self.arab : arab // ignore: cast_nullable_to_non_nullable
as String?,asbab: freezed == asbab ? _self.asbab : asbab // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,ayah: freezed == ayah ? _self.ayah : ayah // ignore: cast_nullable_to_non_nullable
as int?,juz: freezed == juz ? _self.juz : juz // ignore: cast_nullable_to_non_nullable
as int?,surah: freezed == surah ? _self.surah : surah // ignore: cast_nullable_to_non_nullable
as int?,latin: freezed == latin ? _self.latin : latin // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
