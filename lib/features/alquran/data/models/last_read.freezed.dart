// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LastReadAyah {
  Ayah? get ayah => throw _privateConstructorUsedError;
  Surah? get surah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastReadAyahCopyWith<LastReadAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastReadAyahCopyWith<$Res> {
  factory $LastReadAyahCopyWith(
          LastReadAyah value, $Res Function(LastReadAyah) then) =
      _$LastReadAyahCopyWithImpl<$Res, LastReadAyah>;
  @useResult
  $Res call({Ayah? ayah, Surah? surah});

  $AyahCopyWith<$Res>? get ayah;
  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class _$LastReadAyahCopyWithImpl<$Res, $Val extends LastReadAyah>
    implements $LastReadAyahCopyWith<$Res> {
  _$LastReadAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayah = freezed,
    Object? surah = freezed,
  }) {
    return _then(_value.copyWith(
      ayah: freezed == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AyahCopyWith<$Res>? get ayah {
    if (_value.ayah == null) {
      return null;
    }

    return $AyahCopyWith<$Res>(_value.ayah!, (value) {
      return _then(_value.copyWith(ayah: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LastReadAyahImplCopyWith<$Res>
    implements $LastReadAyahCopyWith<$Res> {
  factory _$$LastReadAyahImplCopyWith(
          _$LastReadAyahImpl value, $Res Function(_$LastReadAyahImpl) then) =
      __$$LastReadAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ayah? ayah, Surah? surah});

  @override
  $AyahCopyWith<$Res>? get ayah;
  @override
  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class __$$LastReadAyahImplCopyWithImpl<$Res>
    extends _$LastReadAyahCopyWithImpl<$Res, _$LastReadAyahImpl>
    implements _$$LastReadAyahImplCopyWith<$Res> {
  __$$LastReadAyahImplCopyWithImpl(
      _$LastReadAyahImpl _value, $Res Function(_$LastReadAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayah = freezed,
    Object? surah = freezed,
  }) {
    return _then(_$LastReadAyahImpl(
      ayah: freezed == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$LastReadAyahImpl extends _LastReadAyah {
  const _$LastReadAyahImpl({this.ayah, this.surah}) : super._();

  @override
  final Ayah? ayah;
  @override
  final Surah? surah;

  @override
  String toString() {
    return 'LastReadAyah(ayah: $ayah, surah: $surah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastReadAyahImpl &&
            (identical(other.ayah, ayah) || other.ayah == ayah) &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ayah, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastReadAyahImplCopyWith<_$LastReadAyahImpl> get copyWith =>
      __$$LastReadAyahImplCopyWithImpl<_$LastReadAyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastReadAyahImplToJson(
      this,
    );
  }
}

abstract class _LastReadAyah extends LastReadAyah {
  const factory _LastReadAyah({final Ayah? ayah, final Surah? surah}) =
      _$LastReadAyahImpl;
  const _LastReadAyah._() : super._();

  @override
  Ayah? get ayah;
  @override
  Surah? get surah;
  @override
  @JsonKey(ignore: true)
  _$$LastReadAyahImplCopyWith<_$LastReadAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
