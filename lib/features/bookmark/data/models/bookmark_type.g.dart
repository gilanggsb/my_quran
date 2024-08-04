// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarkType _$BookmarkTypeFromJson(Map<String, dynamic> json) => BookmarkType(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BookmarkTypeToJson(BookmarkType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
