import 'package:json_annotation/json_annotation.dart';

class StringToIntConverter implements JsonConverter<int?, dynamic> {
  const StringToIntConverter();

  @override
  int? fromJson(dynamic input) {
    if (input == null) return null;
    if (input is int) return input;
    if (input is String) return int.tryParse(input);
    return null;
  }

  @override
  dynamic toJson(int? input) => input?.toString();
}
