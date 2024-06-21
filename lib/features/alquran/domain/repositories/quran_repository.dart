import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

abstract class QuranRepository {
  Future<BaseResponse<List<Surah>?>> getSurahs();
  Future<BaseResponse<Surah?>> getSurah(int surahNumber);
  Future<BaseResponse<List<Juz>?>> getJuzs();
  Future<BaseResponse<Juz?>> getJuz(int juzNumber);
  Future<BaseResponse<List<Ayah>?>> getAyahs(AyahPagination pagination);
  Future<BaseResponse<List<Ayah>?>> getAyahsJuz(int juzNumber);
  Future<BaseResponse<List<Ayah>?>> getAyahsThroughout(
    AyahsThroughoutPagination ayahsThroughout,
  );
}
