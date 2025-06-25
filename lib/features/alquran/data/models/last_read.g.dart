// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastReadAyah _$LastReadAyahFromJson(Map<String, dynamic> json) => LastReadAyah(
  ayah: json['ayah'] == null ? null : Ayah.fromJson(json['ayah'] as Map<String, dynamic>),
  surah: json['surah'] == null ? null : Surah.fromJson(json['surah'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LastReadAyahToJson(LastReadAyah instance) => <String, dynamic>{
  'ayah': instance.ayah,
  'surah': instance.surah,
};

Map<String, dynamic> _$$LastReadAyahImplToJson(_$LastReadAyahImpl instance) => <String, dynamic>{
  'ayah': instance.ayah,
  'surah': instance.surah,
};
