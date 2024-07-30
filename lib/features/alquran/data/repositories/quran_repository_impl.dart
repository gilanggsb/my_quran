import '../../../../common/common.dart';
import '../../../features.dart';

class QuranRepositoryImpl extends QuranRepository {
  final QuranRemoteDataSource remoteDataSource;
  final QuranLocalDataSource localDataSource;
  QuranRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse<Surah?>> getSurah(int surahNumber) async {
    final cachedSurah = await localDataSource.getCachedSurah(surahNumber);
    if (cachedSurah != null) {
      return BaseResponse(status: true, data: cachedSurah);
    }

    return await remoteDataSource.getSurah(surahNumber);
  }

  @override
  Future<BaseResponse<List<Surah>?>> getSurahs() async {
    final cachedSurahs = await localDataSource.getCachedSurahs();
    if (cachedSurahs.isNotEmpty) {
      return BaseResponse(status: true, data: cachedSurahs);
    }

    final response = await remoteDataSource.getSurahs();
    localDataSource.cacheSurahs(response.data ?? []);
    return response;
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahs(AyahPagination pagination) async {
    return await remoteDataSource.getAyahs(pagination);
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahsJuz(int juzNumber) async {
    return await remoteDataSource.getAyahsJuz(juzNumber);
  }

  @override
  Future<BaseResponse<Juz?>> getJuz(int juzNumber) async {
    final cachedJuz = await localDataSource.getCachedJuz(juzNumber);
    if (cachedJuz != null) {
      return BaseResponse(status: true, data: cachedJuz);
    }

    return await remoteDataSource.getJuz(juzNumber);
  }

  @override
  Future<BaseResponse<List<Juz>?>> getJuzs() async {
    final cachedJuzs = await localDataSource.getCachedJuzs();
    if (cachedJuzs.isNotEmpty) {
      return BaseResponse(status: true, data: cachedJuzs);
    }

    final response = await remoteDataSource.getJuzs();
    localDataSource.cacheJuzs(response.data ?? []);
    return response;
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahsThroughout(
    AyahsThroughoutPagination ayahsThroughout,
  ) async {
    return await remoteDataSource.getAyahsThroughout(ayahsThroughout);
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getFullAyahs(
    AyahsThroughoutPagination ayahsThroughout,
  ) async {
    return await remoteDataSource.getFullAyahs(ayahsThroughout);
  }

  @override
  Future<LastReadAyah?> getLastReadAyah() async {
    return await localDataSource.getLastReadAyah();
  }

  @override
  Future<void> saveLastReadAyah(LastReadAyah lastRead) async {
    return await localDataSource.saveLastReadAyah(lastRead);
  }
}
