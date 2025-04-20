import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

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
    @HiveField(0) String? id,
    @HiveField(1) int? idInt,
    @HiveField(2) String? arab,
    @HiveField(3) String? asbab,
    @HiveField(4) String? audio,
    @HiveField(5) String? ayah, // Original string representation
    @HiveField(6) int? ayahInt, // Numerical representation
    @HiveField(7) String? juz, // Original string representation
    @HiveField(8) int? juzInt, // Numerical representation
    @HiveField(9) String? surah, // Original string representation
    @HiveField(10) int? surahInt, // Numerical representation
    @HiveField(11) String? latin,
    @HiveField(12) String? notes,
    @HiveField(13) String? page,
    @HiveField(14) String? text,
    @HiveField(15) String? theme,
  }) = _Ayah;

  // Custom fromJson to handle both string and int parsing
  factory Ayah.fromJson(Map<String, dynamic> json) {
    // Attempt to parse integer values from string fields, fallback to null if parsing fails
    int? parseStringToInt(String? value) {
      if (value == null) return null;
      return int.tryParse(value);
    }

    return Ayah(
      arab: json['arab'] as String?,
      id: json['id'] as String?,
      idInt: parseStringToInt(json['id']),
      asbab: json['asbab'] as String?,
      audio: json['audio'] as String?,
      ayah: json['ayah'] as String?,
      ayahInt: parseStringToInt(json['ayah']),
      juz: json['juz'] as String?,
      juzInt: parseStringToInt(json['juz']),
      surah: json['surah'] as String?,
      surahInt: parseStringToInt(json['surah']),
      latin: json['latin'] as String?,
      notes: json['notes'] as String?,
      page: json['page'] as String?,
      text: json['text'] as String?,
      theme: json['theme'] as String?,
    );
  }

  // Custom toJson to ensure both string and int representations are included
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'arab': arab,
      'asbab': asbab,
      'audio': audio,
      'ayah': ayah,
      'juz': juz,
      'surah': surah,
      'latin': latin,
      'notes': notes,
      'page': page,
      'text': text,
      'theme': theme,
    };
  }
}
