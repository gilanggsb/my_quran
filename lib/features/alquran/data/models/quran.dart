// To parse this JSON data, do
//
//     final quran = quranFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran.freezed.dart';
part 'quran.g.dart';

Quran quranFromJson(String str) => Quran.fromJson(json.decode(str));

String quranToJson(Quran data) => json.encode(data.toJson());

@freezed
class Quran with _$Quran {
  const factory Quran({
    String? number,
    String? title,
    String? arabic,
    String? subtitle,
    String? titleAr,
    bool? isPreview,
  }) = _Quran;

  factory Quran.fromJson(Map<String, dynamic> json) => _$QuranFromJson(json);
}
