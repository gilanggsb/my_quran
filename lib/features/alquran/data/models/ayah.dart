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
    String? id,
    int? idInt,
    String? arab,
    String? asbab,
    String? audio,
    String? ayah, // Original string representation
    int? ayahInt, // Numerical representation
    String? juz, // Original string representation
    int? juzInt, // Numerical representation
    String? surah, // Original string representation
    int? surahInt, // Numerical representation
    String? latin,
    String? notes,
    String? page,
    String? text,
    String? theme,
  }) = _Ayah;

  Id get isarId => Isar.autoIncrement;

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
