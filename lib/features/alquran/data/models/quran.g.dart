// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Quran _$QuranFromJson(Map<String, dynamic> json) => _Quran(
  number: const StringToIntConverter().fromJson(json['number'] as String?),
  title: json['title'] as String?,
  arabic: json['arabic'] as String?,
  arabicMaxLine: (json['arabicMaxLine'] as num?)?.toInt(),
  subtitle: json['subtitle'] as String?,
  titleAr: json['titleAr'] as String?,
  isPreview: json['isPreview'] as bool?,
);

Map<String, dynamic> _$QuranToJson(_Quran instance) => <String, dynamic>{
  'number': const StringToIntConverter().toJson(instance.number),
  'title': instance.title,
  'arabic': instance.arabic,
  'arabicMaxLine': instance.arabicMaxLine,
  'subtitle': instance.subtitle,
  'titleAr': instance.titleAr,
  'isPreview': instance.isPreview,
};
