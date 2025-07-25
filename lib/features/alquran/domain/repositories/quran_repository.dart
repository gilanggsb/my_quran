import '../../../../common/common.dart';
import '../../../features.dart';

abstract class QuranRepository {
  Future<BaseResponse<List<Surah>?>> getSurahs();
  Future<BaseResponse<Surah?>> getSurah(int surahNumber);
  Future<BaseResponse<List<Juz>?>> getJuzs();
  Future<BaseResponse<Juz?>> getJuz(int juzNumber);
  Future<BaseResponse<Ayah?>> getAyah(int ayahId);
  Future<BaseResponse<List<Ayah>?>> getAyahs(AyahPagination pagination);
  Future<BaseResponse<List<Ayah>?>> getAyahsJuz(int juzNumber);
  Future<BaseResponse<List<Ayah>?>> getAyahsThroughout(AyahsThroughoutPagination ayahsThroughout);
  Future<BaseResponse<List<Ayah>?>> getFullAyahs(AyahsThroughoutPagination ayahsThroughout);
  Future<LastReadAyah?> getLastReadAyah();
  Future<void> saveLastReadAyah(LastReadAyah lastRead);
}
