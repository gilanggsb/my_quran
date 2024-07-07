// To parse this JSON data, do
//
//     final AyahPagination = AyahPaginationFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_pagination.freezed.dart';
part 'ayah_pagination.g.dart';

AyahPagination ayahPaginationFromJson(String str) =>
    AyahPagination.fromJson(json.decode(str));

String ayahPaginationToJson(AyahPagination data) => json.encode(data.toJson());

@freezed
class AyahPagination with _$AyahPagination {
  const factory AyahPagination({
    int? page,
    int? length,
  }) = _AyahPagination;

  factory AyahPagination.fromJson(Map<String, dynamic> json) =>
      _$AyahPaginationFromJson(json);
}
