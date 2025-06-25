import 'package:freezed_annotation/freezed_annotation.dart';

class StringToIntConverter implements JsonConverter<int?, String?> {
  const StringToIntConverter();

  @override
  int? fromJson(String? input) {
    return int.tryParse(input ?? "0");
  }

  @override
  String? toJson(int? input) {
    return input?.toString();
  }
}
