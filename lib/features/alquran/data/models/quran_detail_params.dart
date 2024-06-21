import 'package:my_quran/features/features.dart';

class QuranDetailParams {
  final AyahsThroughoutPagination? ayahsThroughoutPagination;
  final int? juzNumber;

  QuranDetailParams({
    this.ayahsThroughoutPagination,
    this.juzNumber,
  });
}
