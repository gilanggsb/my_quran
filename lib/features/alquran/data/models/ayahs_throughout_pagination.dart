// To parse this JSON data, do
//
//     final ayahsThroughoutPagination = ayahsThroughoutPaginationFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/utils/utils.dart';

part 'ayahs_throughout_pagination.freezed.dart';
part 'ayahs_throughout_pagination.g.dart';

AyahsThroughoutPagination ayahsThroughoutPaginationFromJson(String str) =>
    AyahsThroughoutPagination.fromJson(json.decode(str));

String ayahsThroughoutPaginationToJson(AyahsThroughoutPagination data) =>
    json.encode(data.toJson());

@freezed
class AyahsThroughoutPagination with _$AyahsThroughoutPagination {
  const factory AyahsThroughoutPagination({
    @StringToIntConverter() int? surat,
    @StringToIntConverter() int? ayat,
    @StringToIntConverter() int? panjang,
    @JsonKey(includeToJson: false)
    int? maxAyat,
  }) = _AyahsThroughoutPagination;

  factory AyahsThroughoutPagination.fromJson(Map<String, dynamic> json) =>
      _$AyahsThroughoutPaginationFromJson(json);
}
