// To parse this JSON data, do
//
//     final ayahsThroughoutPagination = ayahsThroughoutPaginationFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ayahs_throughout_pagination.freezed.dart';
part 'ayahs_throughout_pagination.g.dart';

AyahsThroughoutPagination ayahsThroughoutPaginationFromJson(String str) =>
    AyahsThroughoutPagination.fromJson(json.decode(str));

String ayahsThroughoutPaginationToJson(AyahsThroughoutPagination data) =>
    json.encode(data.toJson());

@freezed
class AyahsThroughoutPagination with _$AyahsThroughoutPagination {
  const factory AyahsThroughoutPagination({
    String? surat,
    String? ayat,
    String? panjang,
  }) = _AyahsThroughoutPagination;

  factory AyahsThroughoutPagination.fromJson(Map<String, dynamic> json) =>
      _$AyahsThroughoutPaginationFromJson(json);
}
