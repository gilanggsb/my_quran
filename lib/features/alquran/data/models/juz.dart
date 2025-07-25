import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../../../../lib.dart';

part 'juz.freezed.dart';
part 'juz.g.dart';

Juz juzFromJson(String str) => Juz.fromJson(json.decode(str));

String juzToJson(Juz data) => json.encode(data.toJson());

@customFreezed
@HiveType(typeId: 1, adapterName: "IgnoreJuz") // Assign a unique typeId for Hive
abstract class Juz with _$Juz {
  const Juz._();
  @customJsonSerializable
  const factory Juz({
    @HiveField(0) String? ayatArab,
    @HiveField(1) String? ayatIndo,
    @HiveField(2) String? ayatLatin,
    @HiveField(3) String? name,
    @HiveField(4) String? nameEndArab,
    @HiveField(5) String? nameEndId,
    @HiveField(6) String? nameStartArab,
    @HiveField(7) String? nameStartId,
    @HiveField(8) @StringToIntConverter() int? number,
    @HiveField(9) @StringToIntConverter() int? surahIdEnd,
    @HiveField(10) @StringToIntConverter() int? surahIdStart,
    @HiveField(11) String? verseEnd,
    @HiveField(12) String? verseStart,
  }) = _Juz;

  // Custom fromJson method generated by Freezed
  factory Juz.fromJson(Map<String, dynamic> json) => _$JuzFromJson(json);

}
