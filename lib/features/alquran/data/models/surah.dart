// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

Surah surahFromJson(String str) => Surah.fromJson(json.decode(str));

String surahToJson(Surah data) => json.encode(data.toJson());

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class Surah with _$Surah {
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

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

extension SurahExt on Surah {
  String get translateRevelationId => revelationId == null
      ? ''
      : revelationId!.contains('Madaniyyah')
          ? 'Madinah'
          : 'Mekkah';
}
