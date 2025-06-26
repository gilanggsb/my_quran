// To parse this JSON data, do
//
//     final quran = quranFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../lib.dart';

part 'quran.freezed.dart';
part 'quran.g.dart';

Quran quranFromJson(String str) => Quran.fromJson(json.decode(str));

String quranToJson(Quran data) => json.encode(data.toJson());

@customFreezed
abstract class Quran with _$Quran {
  @customJsonSerializable
  const factory Quran({
    @StringToIntConverter() int? number,
    String? title,
    String? arabic,
    int? arabicMaxLine,
    String? subtitle,
    String? titleAr,
    bool? isPreview,
  }) = _Quran;

  factory Quran.fromJson(Map<String, dynamic> json) => _$QuranFromJson(json);
}
