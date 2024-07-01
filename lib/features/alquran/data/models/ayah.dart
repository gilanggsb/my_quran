// To parse this JSON data, do
//
//     final ayah = ayahFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah.freezed.dart';
part 'ayah.g.dart';

Ayah ayahFromJson(String str) => Ayah.fromJson(json.decode(str));

String ayahToJson(Ayah data) => json.encode(data.toJson());

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class Ayah with _$Ayah {
  const factory Ayah({
    String? arab,
    String? asbab,
    String? audio,
    String? ayah,
    String? hizb,
    String? id,
    String? juz,
    String? latin,
    dynamic notes,
    String? page,
    String? surah,
    String? text,
    bool? isLastRead,
    dynamic theme,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}
