// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

Surah surahFromJson(String str) => Surah.fromJson(json.decode(str));

String surahToJson(Surah data) => json.encode(data.toJson());

@Freezed(fromJson: false, toJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
@Collection(ignore: {'copyWith'})
class Surah with _$Surah {
  ///Don't Forget below line
  const Surah._();
  const factory Surah({
    String? audioUrl,
    String? nameEn,
    String? nameId,
    String? nameLong,
    String? nameShort,
    String? number,
    String? numberOfVerses,
    String? revelation,
    String? revelationEn,
    String? revelationId,
    String? sequence,
    String? tafsir,
    String? translationEn,
    String? translationId,
  }) = _Surah;

  Id get isarId => Isar.autoIncrement;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);

  toJson() => _$SurahToJson(this);
}

extension SurahExt on Surah {
  String get translateRevelationId => revelationId == null
      ? ''
      : revelationId!.contains('Madaniyyah')
          ? 'Madinah'
          : 'Mekkah';
}
