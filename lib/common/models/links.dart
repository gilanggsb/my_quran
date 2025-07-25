// To parse this JSON data, do
//
//     final links = linksFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../lib.dart';

part 'links.freezed.dart';
part 'links.g.dart';

Links linksFromJson(String str) => Links.fromJson(json.decode(str));

String linksToJson(Links data) => json.encode(data.toJson());

@customFreezed
abstract class Links with _$Links {
  @customJsonSerializable
  const factory Links({String? first, String? last, dynamic prev, String? next}) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
