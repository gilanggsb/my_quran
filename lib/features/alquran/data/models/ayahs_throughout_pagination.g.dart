// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayahs_throughout_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahsThroughoutPaginationImpl _$$AyahsThroughoutPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$AyahsThroughoutPaginationImpl(
      surat: const StringToIntConverter().fromJson(json['surat'] as String?),
      ayat: const StringToIntConverter().fromJson(json['ayat'] as String?),
      panjang:
          const StringToIntConverter().fromJson(json['panjang'] as String?),
      maxAyat: (json['maxAyat'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AyahsThroughoutPaginationImplToJson(
        _$AyahsThroughoutPaginationImpl instance) =>
    <String, dynamic>{
      'surat': const StringToIntConverter().toJson(instance.surat),
      'ayat': const StringToIntConverter().toJson(instance.ayat),
      'panjang': const StringToIntConverter().toJson(instance.panjang),
    };
