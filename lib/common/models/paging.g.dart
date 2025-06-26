// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Paging _$PagingFromJson(Map<String, dynamic> json) => _Paging(
  totalItems: (json['totalItems'] as num?)?.toInt(),
  currentPage: (json['currentPage'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  startPage: (json['startPage'] as num?)?.toInt(),
  endPage: (json['endPage'] as num?)?.toInt(),
  startIndex: (json['startIndex'] as num?)?.toInt(),
  endIndex: (json['endIndex'] as num?)?.toInt(),
  pages:
      (json['pages'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
);

Map<String, dynamic> _$PagingToJson(_Paging instance) => <String, dynamic>{
  'totalItems': instance.totalItems,
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'startPage': instance.startPage,
  'endPage': instance.endPage,
  'startIndex': instance.startIndex,
  'endIndex': instance.endIndex,
  'pages': instance.pages,
};
