// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Links _$LinksFromJson(Map<String, dynamic> json) => _Links(
  first: json['first'] as String?,
  last: json['last'] as String?,
  prev: json['prev'],
  next: json['next'] as String?,
);

Map<String, dynamic> _$LinksToJson(_Links instance) => <String, dynamic>{
  'first': instance.first,
  'last': instance.last,
  'prev': instance.prev,
  'next': instance.next,
};
