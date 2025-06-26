import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../lib.dart';

part 'last_read.freezed.dart';
part 'last_read.g.dart';

@customFreezed
abstract class LastReadAyah with _$LastReadAyah {
  const LastReadAyah._();

  @customJsonSerializable
  const factory LastReadAyah({Ayah? ayah, Surah? surah}) = _LastReadAyah;

  factory LastReadAyah.fromJson(Map<String, dynamic> json) => _$LastReadAyahFromJson(json);
}
