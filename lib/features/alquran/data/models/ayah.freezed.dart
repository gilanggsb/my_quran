// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Ayah {
  @HiveField(0)
  @StringToIntConverter()
  int? get id => throw _privateConstructorUsedError; // @HiveField(1) int? idInt,
  @HiveField(1)
  String? get arab => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get asbab => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get audio => throw _privateConstructorUsedError;
  @HiveField(4)
  @StringToIntConverter()
  int? get ayah => throw _privateConstructorUsedError; // Original string representation
  // @HiveField(6) int? ayahInt, // Numerical representation
  @HiveField(5)
  @StringToIntConverter()
  int? get juz => throw _privateConstructorUsedError; // Original string representation
  // @HiveField(8) int? juzInt, // Numerical representation
  @HiveField(6)
  @StringToIntConverter()
  int? get surah => throw _privateConstructorUsedError; // Original string representation
  // @HiveField(10) int? surahInt, // Numerical representation
  @HiveField(7)
  String? get latin => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get notes => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get page => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get text => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get theme => throw _privateConstructorUsedError;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) = _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call({
    @HiveField(0) @StringToIntConverter() int? id,
    @HiveField(1) String? arab,
    @HiveField(2) String? asbab,
    @HiveField(3) String? audio,
    @HiveField(4) @StringToIntConverter() int? ayah,
    @HiveField(5) @StringToIntConverter() int? juz,
    @HiveField(6) @StringToIntConverter() int? surah,
    @HiveField(7) String? latin,
    @HiveField(8) String? notes,
    @HiveField(9) String? page,
    @HiveField(10) String? text,
    @HiveField(11) String? theme,
  });
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah> implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? arab = freezed,
    Object? asbab = freezed,
    Object? audio = freezed,
    Object? ayah = freezed,
    Object? juz = freezed,
    Object? surah = freezed,
    Object? latin = freezed,
    Object? notes = freezed,
    Object? page = freezed,
    Object? text = freezed,
    Object? theme = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            arab:
                freezed == arab
                    ? _value.arab
                    : arab // ignore: cast_nullable_to_non_nullable
                        as String?,
            asbab:
                freezed == asbab
                    ? _value.asbab
                    : asbab // ignore: cast_nullable_to_non_nullable
                        as String?,
            audio:
                freezed == audio
                    ? _value.audio
                    : audio // ignore: cast_nullable_to_non_nullable
                        as String?,
            ayah:
                freezed == ayah
                    ? _value.ayah
                    : ayah // ignore: cast_nullable_to_non_nullable
                        as int?,
            juz:
                freezed == juz
                    ? _value.juz
                    : juz // ignore: cast_nullable_to_non_nullable
                        as int?,
            surah:
                freezed == surah
                    ? _value.surah
                    : surah // ignore: cast_nullable_to_non_nullable
                        as int?,
            latin:
                freezed == latin
                    ? _value.latin
                    : latin // ignore: cast_nullable_to_non_nullable
                        as String?,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as String?,
            text:
                freezed == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String?,
            theme:
                freezed == theme
                    ? _value.theme
                    : theme // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(_$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) @StringToIntConverter() int? id,
    @HiveField(1) String? arab,
    @HiveField(2) String? asbab,
    @HiveField(3) String? audio,
    @HiveField(4) @StringToIntConverter() int? ayah,
    @HiveField(5) @StringToIntConverter() int? juz,
    @HiveField(6) @StringToIntConverter() int? surah,
    @HiveField(7) String? latin,
    @HiveField(8) String? notes,
    @HiveField(9) String? page,
    @HiveField(10) String? text,
    @HiveField(11) String? theme,
  });
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res> extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
    : super(_value, _then);

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? arab = freezed,
    Object? asbab = freezed,
    Object? audio = freezed,
    Object? ayah = freezed,
    Object? juz = freezed,
    Object? surah = freezed,
    Object? latin = freezed,
    Object? notes = freezed,
    Object? page = freezed,
    Object? text = freezed,
    Object? theme = freezed,
  }) {
    return _then(
      _$AyahImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        arab:
            freezed == arab
                ? _value.arab
                : arab // ignore: cast_nullable_to_non_nullable
                    as String?,
        asbab:
            freezed == asbab
                ? _value.asbab
                : asbab // ignore: cast_nullable_to_non_nullable
                    as String?,
        audio:
            freezed == audio
                ? _value.audio
                : audio // ignore: cast_nullable_to_non_nullable
                    as String?,
        ayah:
            freezed == ayah
                ? _value.ayah
                : ayah // ignore: cast_nullable_to_non_nullable
                    as int?,
        juz:
            freezed == juz
                ? _value.juz
                : juz // ignore: cast_nullable_to_non_nullable
                    as int?,
        surah:
            freezed == surah
                ? _value.surah
                : surah // ignore: cast_nullable_to_non_nullable
                    as int?,
        latin:
            freezed == latin
                ? _value.latin
                : latin // ignore: cast_nullable_to_non_nullable
                    as String?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as String?,
        text:
            freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String?,
        theme:
            freezed == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$AyahImpl extends _Ayah {
  const _$AyahImpl({
    @HiveField(0) @StringToIntConverter() this.id,
    @HiveField(1) this.arab,
    @HiveField(2) this.asbab,
    @HiveField(3) this.audio,
    @HiveField(4) @StringToIntConverter() this.ayah,
    @HiveField(5) @StringToIntConverter() this.juz,
    @HiveField(6) @StringToIntConverter() this.surah,
    @HiveField(7) this.latin,
    @HiveField(8) this.notes,
    @HiveField(9) this.page,
    @HiveField(10) this.text,
    @HiveField(11) this.theme,
  }) : super._();

  @override
  @HiveField(0)
  @StringToIntConverter()
  final int? id;
  // @HiveField(1) int? idInt,
  @override
  @HiveField(1)
  final String? arab;
  @override
  @HiveField(2)
  final String? asbab;
  @override
  @HiveField(3)
  final String? audio;
  @override
  @HiveField(4)
  @StringToIntConverter()
  final int? ayah;
  // Original string representation
  // @HiveField(6) int? ayahInt, // Numerical representation
  @override
  @HiveField(5)
  @StringToIntConverter()
  final int? juz;
  // Original string representation
  // @HiveField(8) int? juzInt, // Numerical representation
  @override
  @HiveField(6)
  @StringToIntConverter()
  final int? surah;
  // Original string representation
  // @HiveField(10) int? surahInt, // Numerical representation
  @override
  @HiveField(7)
  final String? latin;
  @override
  @HiveField(8)
  final String? notes;
  @override
  @HiveField(9)
  final String? page;
  @override
  @HiveField(10)
  final String? text;
  @override
  @HiveField(11)
  final String? theme;

  @override
  String toString() {
    return 'Ayah(id: $id, arab: $arab, asbab: $asbab, audio: $audio, ayah: $ayah, juz: $juz, surah: $surah, latin: $latin, notes: $notes, page: $page, text: $text, theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.asbab, asbab) || other.asbab == asbab) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.ayah, ayah) || other.ayah == ayah) &&
            (identical(other.juz, juz) || other.juz == juz) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.latin, latin) || other.latin == latin) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    arab,
    asbab,
    audio,
    ayah,
    juz,
    surah,
    latin,
    notes,
    page,
    text,
    theme,
  );

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);
}

abstract class _Ayah extends Ayah {
  const factory _Ayah({
    @HiveField(0) @StringToIntConverter() final int? id,
    @HiveField(1) final String? arab,
    @HiveField(2) final String? asbab,
    @HiveField(3) final String? audio,
    @HiveField(4) @StringToIntConverter() final int? ayah,
    @HiveField(5) @StringToIntConverter() final int? juz,
    @HiveField(6) @StringToIntConverter() final int? surah,
    @HiveField(7) final String? latin,
    @HiveField(8) final String? notes,
    @HiveField(9) final String? page,
    @HiveField(10) final String? text,
    @HiveField(11) final String? theme,
  }) = _$AyahImpl;
  const _Ayah._() : super._();

  @override
  @HiveField(0)
  @StringToIntConverter()
  int? get id; // @HiveField(1) int? idInt,
  @override
  @HiveField(1)
  String? get arab;
  @override
  @HiveField(2)
  String? get asbab;
  @override
  @HiveField(3)
  String? get audio;
  @override
  @HiveField(4)
  @StringToIntConverter()
  int? get ayah; // Original string representation
  // @HiveField(6) int? ayahInt, // Numerical representation
  @override
  @HiveField(5)
  @StringToIntConverter()
  int? get juz; // Original string representation
  // @HiveField(8) int? juzInt, // Numerical representation
  @override
  @HiveField(6)
  @StringToIntConverter()
  int? get surah; // Original string representation
  // @HiveField(10) int? surahInt, // Numerical representation
  @override
  @HiveField(7)
  String? get latin;
  @override
  @HiveField(8)
  String? get notes;
  @override
  @HiveField(9)
  String? get page;
  @override
  @HiveField(10)
  String? get text;
  @override
  @HiveField(11)
  String? get theme;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith => throw _privateConstructorUsedError;
}
