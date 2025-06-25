import '../../../features.dart';

class QuranDetailParams {
  final AyahsThroughoutPagination? ayahsThroughoutPagination;
  final int? juzNumber;
  final LastReadAyah? lastReadAyah;
  final QuranDetailTypeEnum detailType;

  QuranDetailParams({
    required this.detailType,
    this.lastReadAyah,
    this.ayahsThroughoutPagination,
    this.juzNumber,
  });

  QuranDetailParams copyWith({
    AyahsThroughoutPagination? ayahsThroughoutPagination,
    int? juzNumber,
    LastReadAyah? lastReadAyah,
    QuranDetailTypeEnum? detailType,
  }) => QuranDetailParams(
    ayahsThroughoutPagination: ayahsThroughoutPagination ?? this.ayahsThroughoutPagination,
    juzNumber: juzNumber ?? this.juzNumber,
    detailType: detailType ?? this.detailType,
    lastReadAyah: lastReadAyah ?? this.lastReadAyah,
  );
}
