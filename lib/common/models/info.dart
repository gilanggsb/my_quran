import 'package:freezed_annotation/freezed_annotation.dart';

import '../../lib.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@customFreezed
abstract class Info with _$Info {
  @customJsonSerializable
  const factory Info({int? min, int? max}) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
