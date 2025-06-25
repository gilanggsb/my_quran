import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../../../../common/common.dart';

part 'ayah.freezed.dart';
part 'ayah.g.dart';

Ayah ayahFromJson(String str) => Ayah.fromJson(json.decode(str));
String ayahToJson(Ayah data) => json.encode(data.toJson());

@Freezed(fromJson: false, toJson: false)
@HiveType(typeId: 0) // Assign a unique typeId for Hive
@JsonSerializable(fieldRename: FieldRename.snake)
class Ayah with _$Ayah {
  const Ayah._();

  const factory Ayah({
    @HiveField(0) @StringToIntConverter() int? id,
    // @HiveField(1) int? idInt,
    @HiveField(1) String? arab,
    @HiveField(2) String? asbab,
    @HiveField(3) String? audio,
    @HiveField(4) @StringToIntConverter() int? ayah, // Original string representation
    // @HiveField(6) int? ayahInt, // Numerical representation
    @HiveField(5) @StringToIntConverter() int? juz, // Original string representation
    // @HiveField(8) int? juzInt, // Numerical representation
    @HiveField(6) @StringToIntConverter() int? surah, // Original string representation
    // @HiveField(10) int? surahInt, // Numerical representation
    @HiveField(7) String? latin,
    @HiveField(8) String? notes,
    @HiveField(9) String? page,
    @HiveField(10) String? text,
    @HiveField(11) String? theme,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);

  Map<String, dynamic> toJson() => _$AyahToJson(this);
}
