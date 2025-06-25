import 'package:freezed_annotation/freezed_annotation.dart';

import '../../lib.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@customFreezed
abstract class Request with _$Request {
  @customJsonSerializable
  const factory Request({String? path}) = _Request;

  factory Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);
}
