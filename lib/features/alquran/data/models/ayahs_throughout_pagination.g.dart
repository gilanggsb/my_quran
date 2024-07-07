// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayahs_throughout_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahsThroughoutPaginationImpl _$$AyahsThroughoutPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$AyahsThroughoutPaginationImpl(
      surat: json['surat'] as String?,
      ayat: json['ayat'] as String?,
      panjang: json['panjang'] as String?,
      maxAyat: (json['maxAyat'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AyahsThroughoutPaginationImplToJson(
        _$AyahsThroughoutPaginationImpl instance) =>
    <String, dynamic>{
      'surat': instance.surat,
      'ayat': instance.ayat,
      'panjang': instance.panjang,
      'maxAyat': instance.maxAyat,
    };
