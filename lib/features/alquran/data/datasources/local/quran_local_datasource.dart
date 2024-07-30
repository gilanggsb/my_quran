import '../../../../features.dart';

abstract class QuranLocalDataSource {
  Future<LastReadAyah?> getLastReadAyah();
  Future<void> saveLastReadAyah(LastReadAyah lastRead);
  Future<void> cacheSurahs(List<Surah> surahs);
  Future<List<Surah>> getCachedSurahs();
  Future<Surah?> getCachedSurah(int surahNumber);
  Future<void> cacheJuzs(List<Juz> juzs);
  Future<List<Juz>> getCachedJuzs();
  Future<Juz?> getCachedJuz(int juzNumber);
}
