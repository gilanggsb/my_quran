// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Quran _$QuranFromJson(Map<String, dynamic> json) => _Quran(
  number: const StringToIntConverter().fromJson(json['number']),
  title: json['title'] as String?,
  arabic: json['arabic'] as String?,
  arabicMaxLine: (json['arabic_max_line'] as num?)?.toInt(),
  subtitle: json['subtitle'] as String?,
  titleAr: json['title_ar'] as String?,
  isPreview: json['is_preview'] as bool?,
);

Map<String, dynamic> _$QuranToJson(_Quran instance) => <String, dynamic>{
  'number': const StringToIntConverter().toJson(instance.number),
  'title': instance.title,
  'arabic': instance.arabic,
  'arabic_max_line': instance.arabicMaxLine,
  'subtitle': instance.subtitle,
  'title_ar': instance.titleAr,
  'is_preview': instance.isPreview,
};
