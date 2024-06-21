// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah(
      arab: json['arab'] as String?,
      asbab: json['asbab'] as String?,
      audio: json['audio'] as String?,
      ayah: json['ayah'] as String?,
      hizb: json['hizb'] as String?,
      id: json['id'] as String?,
      juz: json['juz'] as String?,
      latin: json['latin'] as String?,
      notes: json['notes'],
      page: json['page'] as String?,
      surah: json['surah'] as String?,
      text: json['text'] as String?,
      isLastRead: json['is_last_read'] as bool?,
      theme: json['theme'],
    );

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{
      'arab': instance.arab,
      'asbab': instance.asbab,
      'audio': instance.audio,
      'ayah': instance.ayah,
      'hizb': instance.hizb,
      'id': instance.id,
      'juz': instance.juz,
      'latin': instance.latin,
      'notes': instance.notes,
      'page': instance.page,
      'surah': instance.surah,
      'text': instance.text,
      'is_last_read': instance.isLastRead,
      'theme': instance.theme,
    };

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'asbab': instance.asbab,
      'audio': instance.audio,
      'ayah': instance.ayah,
      'hizb': instance.hizb,
      'id': instance.id,
      'juz': instance.juz,
      'latin': instance.latin,
      'notes': instance.notes,
      'page': instance.page,
      'surah': instance.surah,
      'text': instance.text,
      'isLastRead': instance.isLastRead,
      'theme': instance.theme,
    };
