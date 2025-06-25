import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features.dart';

part 'last_read.freezed.dart';
part 'last_read.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class LastReadAyah with _$LastReadAyah {
  const LastReadAyah._();

  const factory LastReadAyah({Ayah? ayah, Surah? surah}) = _LastReadAyah;

  factory LastReadAyah.fromJson(Map<String, dynamic> json) => _$LastReadAyahFromJson(json);
}
