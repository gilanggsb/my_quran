// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quran _$QuranFromJson(Map<String, dynamic> json) {
  return _Quran.fromJson(json);
}

/// @nodoc
mixin _$Quran {
  String? get number => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get arabic => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get titleAr => throw _privateConstructorUsedError;
  bool? get isPreview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranCopyWith<Quran> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranCopyWith<$Res> {
  factory $QuranCopyWith(Quran value, $Res Function(Quran) then) =
      _$QuranCopyWithImpl<$Res, Quran>;
  @useResult
  $Res call(
      {String? number,
      String? title,
      String? arabic,
      String? subtitle,
      String? titleAr,
      bool? isPreview});
}

/// @nodoc
class _$QuranCopyWithImpl<$Res, $Val extends Quran>
    implements $QuranCopyWith<$Res> {
  _$QuranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? arabic = freezed,
    Object? subtitle = freezed,
    Object? titleAr = freezed,
    Object? isPreview = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      arabic: freezed == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranImplCopyWith<$Res> implements $QuranCopyWith<$Res> {
  factory _$$QuranImplCopyWith(
          _$QuranImpl value, $Res Function(_$QuranImpl) then) =
      __$$QuranImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? number,
      String? title,
      String? arabic,
      String? subtitle,
      String? titleAr,
      bool? isPreview});
}

/// @nodoc
class __$$QuranImplCopyWithImpl<$Res>
    extends _$QuranCopyWithImpl<$Res, _$QuranImpl>
    implements _$$QuranImplCopyWith<$Res> {
  __$$QuranImplCopyWithImpl(
      _$QuranImpl _value, $Res Function(_$QuranImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? arabic = freezed,
    Object? subtitle = freezed,
    Object? titleAr = freezed,
    Object? isPreview = freezed,
  }) {
    return _then(_$QuranImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      arabic: freezed == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranImpl implements _Quran {
  const _$QuranImpl(
      {this.number,
      this.title,
      this.arabic,
      this.subtitle,
      this.titleAr,
      this.isPreview});

  factory _$QuranImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranImplFromJson(json);

  @override
  final String? number;
  @override
  final String? title;
  @override
  final String? arabic;
  @override
  final String? subtitle;
  @override
  final String? titleAr;
  @override
  final bool? isPreview;

  @override
  String toString() {
    return 'Quran(number: $number, title: $title, arabic: $arabic, subtitle: $subtitle, titleAr: $titleAr, isPreview: $isPreview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, number, title, arabic, subtitle, titleAr, isPreview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranImplCopyWith<_$QuranImpl> get copyWith =>
      __$$QuranImplCopyWithImpl<_$QuranImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranImplToJson(
      this,
    );
  }
}

abstract class _Quran implements Quran {
  const factory _Quran(
      {final String? number,
      final String? title,
      final String? arabic,
      final String? subtitle,
      final String? titleAr,
      final bool? isPreview}) = _$QuranImpl;

  factory _Quran.fromJson(Map<String, dynamic> json) = _$QuranImpl.fromJson;

  @override
  String? get number;
  @override
  String? get title;
  @override
  String? get arabic;
  @override
  String? get subtitle;
  @override
  String? get titleAr;
  @override
  bool? get isPreview;
  @override
  @JsonKey(ignore: true)
  _$$QuranImplCopyWith<_$QuranImpl> get copyWith =>
      throw _privateConstructorUsedError;
}