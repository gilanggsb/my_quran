// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastReadAyah _$LastReadAyahFromJson(Map<String, dynamic> json) =>
    _LastReadAyah(
      ayah:
          json['ayah'] == null
              ? null
              : Ayah.fromJson(json['ayah'] as Map<String, dynamic>),
      surah:
          json['surah'] == null
              ? null
              : Surah.fromJson(json['surah'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LastReadAyahToJson(_LastReadAyah instance) =>
    <String, dynamic>{'ayah': instance.ayah, 'surah': instance.surah};
