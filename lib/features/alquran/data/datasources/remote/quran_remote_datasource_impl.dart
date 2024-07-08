import '../../../../../common/common.dart';
import '../../../../features.dart';

class QuranRemoteDataSourceImpl extends QuranRemoteDataSource {
  final ApiService service;
  QuranRemoteDataSourceImpl({required this.service});

  @override
  Future<BaseResponse<Surah?>> getSurah(int surahNumber) async {
    try {
      final response = await service.get<Surah>(
        URL.quranSurah,
        pathParams: {"surah": surahNumber},
        fromJsonT: (json) => Surah.fromJson(json),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<Surah>?>> getSurahs() async {
    try {
      final response = await service.get<List<Surah>>(
        URL.quranSurahAll,
        fromJsonT: (json) => List<Surah>.from(
          (json as List).map((element) => Surah.fromJson(element)),
        ),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<Juz?>> getJuz(int juzNumber) async {
    try {
      final response = await service.get<Juz>(
        URL.quranJuz,
        pathParams: {"surah": juzNumber},
        fromJsonT: (json) => Juz.fromJson(json),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<Juz>?>> getJuzs() async {
    try {
      final response = await service.get<List<Juz>>(
        URL.quranJuzAll,
        fromJsonT: (json) => List<Juz>.from(
          (json as List).map((element) => Juz.fromJson(element)),
        ),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahsJuz(int juzNumber) async {
    try {
      final response = await service.get<List<Ayah>>(
        URL.quranAyahJuz,
        pathParams: {"juz": juzNumber},
        fromJsonT: (json) => List<Ayah>.from(
          (json as List).map((element) => Ayah.fromJson(element)),
        ),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahs(AyahPagination pagination) async {
    try {
      final response = await service.get<List<Ayah>>(
        URL.quranAyahBrowse,
        queryParams: pagination.toJson(),
        fromJsonT: (json) => List<Ayah>.from(
          (json as List).map((element) => Ayah.fromJson(element)),
        ),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getAyahsThroughout(
    AyahsThroughoutPagination ayahsThroughout,
  ) async {
    try {
      final response = await service.get<List<Ayah>>(
        URL.quranAyah,
        pathParams: ayahsThroughout.toJson(),
        fromJsonT: (json) => List<Ayah>.from(
          (json as List).map((element) => Ayah.fromJson(element)),
        ),
      );
      return response;
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on String catch (_) {
      rethrow;
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<Ayah>?>> getFullAyahs(
    AyahsThroughoutPagination ayahsThroughout,
  ) async {
    try {
      int nextAyahPagination = ayahsThroughout.maxAyat ?? 100;
      AyahsThroughoutPagination ayahsPagination = ayahsThroughout;
      final fullAyahs = <Ayah>[];

      for (int i = 0; i < nextAyahPagination; i++) {
        final response = await getAyahsThroughout(ayahsPagination);

        if ((response.data ?? []).isEmpty) {
          break;
        }

        fullAyahs.addAll(response.data ?? []);
        ayahsPagination = ayahsPagination.copyWith(
          ayat: "${ayahsPagination.ayat!.parseInt + 30}",
        );
      }

      return BaseResponse(data: fullAyahs);
    } on BadResponse catch (badResponse) {
      throw '${badResponse.message}';
    } on ServerFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }
}
