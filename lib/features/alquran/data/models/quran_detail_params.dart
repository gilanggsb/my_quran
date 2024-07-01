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
}
