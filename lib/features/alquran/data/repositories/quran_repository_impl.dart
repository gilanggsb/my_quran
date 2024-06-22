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
    return await remoteDataSource.getSurah(surahNumber);
  }

  @override
  Future<BaseResponse<List<Surah>?>> getSurahs() async {
    return await remoteDataSource.getSurahs();
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
    return await remoteDataSource.getJuz(juzNumber);
  }

  @override
  Future<BaseResponse<List<Juz>?>> getJuzs() async {
    return await remoteDataSource.getJuzs();
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahsThroughout(
      AyahsThroughoutPagination ayahsThroughout) async {
    return await remoteDataSource.getAyahsThroughout(ayahsThroughout);
  }
}
