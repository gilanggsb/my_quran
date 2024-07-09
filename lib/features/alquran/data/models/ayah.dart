import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'ayah.freezed.dart';
part 'ayah.g.dart';

Ayah ayahFromJson(String str) => Ayah.fromJson(json.decode(str));
String ayahToJson(Ayah data) => json.encode(data.toJson());

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
@Collection(ignore: {'copyWith'})
class Ayah with _$Ayah {
  const Ayah._();

  const factory Ayah({
    String? arab,
    String? asbab,
    String? audio,
    String? ayah,
    String? hizb,
    String? id,
    String? juz,
    String? latin,
    String? notes,
    String? page,
    String? surah,
    String? text,
    String? theme,
  }) = _Ayah;

  Id get isarId => Isar.autoIncrement;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}
