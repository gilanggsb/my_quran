import '../../../features.dart';

class QuranDetailParams {
  final AyahsThroughoutPagination? ayahsThroughoutPagination;
  final int? juzNumber;
  final QuranDetailTypeEnum detailType;

  QuranDetailParams({
    required this.detailType,
    this.ayahsThroughoutPagination,
    this.juzNumber,
  });

  QuranDetailParams copyWith({
    AyahsThroughoutPagination? ayahsThroughoutPagination,
    int? juzNumber,
    QuranDetailTypeEnum? detailType,
  }) =>
      QuranDetailParams(
        ayahsThroughoutPagination:
            ayahsThroughoutPagination ?? this.ayahsThroughoutPagination,
        juzNumber: juzNumber ?? this.juzNumber,
        detailType: detailType ?? this.detailType,
      );
}
