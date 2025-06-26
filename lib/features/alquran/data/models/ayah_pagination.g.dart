// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AyahPagination _$AyahPaginationFromJson(Map<String, dynamic> json) =>
    _AyahPagination(
      page: (json['page'] as num?)?.toInt(),
      length: (json['length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AyahPaginationToJson(_AyahPagination instance) =>
    <String, dynamic>{'page': instance.page, 'length': instance.length};
