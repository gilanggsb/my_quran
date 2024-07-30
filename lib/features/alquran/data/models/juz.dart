// To parse this JSON data, do
//
//     final juz = juzFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'juz.freezed.dart';
part 'juz.g.dart';

Juz juzFromJson(String str) => Juz.fromJson(json.decode(str));

String juzToJson(Juz data) => json.encode(data.toJson());

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class Juz with _$Juz {
  const factory Juz({
    String? ayatArab,
    String? ayatIndo,
    String? ayatLatin,
    String? name,
    String? nameEndArab,
    String? nameEndId,
    String? nameStartArab,
    String? nameStartId,
    String? number,
    String? surahIdEnd,
    String? surahIdStart,
    String? verseEnd,
    String? verseStart,
  }) = _Juz;

  factory Juz.fromJson(Map<String, dynamic> json) => _$JuzFromJson(json);
}
