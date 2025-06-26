// To parse this JSON data, do
//
//     final paging = pagingFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../lib.dart';

part 'paging.freezed.dart';
part 'paging.g.dart';

Paging pagingFromJson(String str) => Paging.fromJson(json.decode(str));

String pagingToJson(Paging data) => json.encode(data.toJson());

@customFreezed
abstract class Paging with _$Paging {
  @customJsonSerializable
  const factory Paging({
    int? totalItems,
    int? currentPage,
    int? pageSize,
    int? totalPages,
    int? startPage,
    int? endPage,
    int? startIndex,
    int? endIndex,
    List<int>? pages,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}
