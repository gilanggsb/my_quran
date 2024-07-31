import 'dart:convert';

import 'package:isar/isar.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class QuranLocalDataSourceImpl extends QuranLocalDataSource {
  final IsarService localDBService;
  final StorageService storageService;
  QuranLocalDataSourceImpl({
    required this.storageService,
    required this.localDBService,
  });

  @override
  Future<LastReadAyah?> getLastReadAyah() async {
    try {
      final lastRead = await storageService.get(StorageKeys.lastRead);
      if (lastRead == null) return null;

      return LastReadAyah.fromJson(jsonDecode(lastRead));
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> saveLastReadAyah(LastReadAyah lastRead) async {
    try {
      await storageService.save(
        key: StorageKeys.lastRead,
        value: jsonEncode(lastRead.toJson()),
      );
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> cacheSurahs(List<Surah> surahs) async {
    try {
      await localDBService.writeAll<Surah>(surahs);
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Surah>> getCachedSurahs() async {
    try {
      return await localDBService.readAll<Surah>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Surah?> getCachedSurah(int surahNumber) async {
    try {
      final surahCollection = localDBService.getCollection<Surah>();
      final surah = await surahCollection
          .where()
          .filter()
          .numberEqualTo("$surahNumber")
          .findFirst();
      return surah;
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> cacheJuzs(List<Juz> juzs) async {
    try {
      await localDBService.writeAll<Juz>(juzs);
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Juz>> getCachedJuzs() async {
    try {
      return await localDBService.readAll<Juz>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Juz?> getCachedJuz(int juzNumber) async {
    try {
      final juzCollection = localDBService.getCollection<Juz>();
      final juz = await juzCollection
          .where()
          .filter()
          .numberEqualTo("$juzNumber")
          .findFirst();
      return juz;
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> cacheAyahs(List<Ayah> ayahs) async {
    try {
      for (final ayah in ayahs) {
        final isAyahExist = await getCachedAyah(ayah.id ?? '') != null;
        if (isAyahExist) continue;
        await localDBService.write<Ayah>(ayah);
      }
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Ayah?> getCachedAyah(String ayahId) async {
    try {
      final ayahCollection = localDBService.getCollection<Ayah>();
      final ayah =
          await ayahCollection.where().filter().idEqualTo(ayahId).findFirst();
      return ayah;
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Ayah>> getCachedAyahs(AyahPagination pagination) async {
    try {
      final ayahCollection = localDBService.getCollection<Ayah>();
      final ayahs = await ayahCollection
          .filter()
          .idEqualTo("${pagination.page}")
          .limit(pagination.page!)
          .findAll();
      return ayahs;
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  String padNumber(int number, int maxLength) {
    return number.toString().padLeft(maxLength, '0');
  }

  @override
  Future<List<Ayah>> getCachedAyahsThroughout(
    AyahsThroughoutPagination ayahsThroughout,
  ) async {
    try {
      final ayahCollection = localDBService.getCollection<Ayah>();
      final ayahs = await ayahCollection
          .filter()
          .surahEqualTo(ayahsThroughout.surat)
          .ayahIntBetween(
            ayahsThroughout.ayat!.parseInt,
            ayahsThroughout.panjang!.parseInt,
          )
          .findAll();

      // Logger.logInfo(
      //   "getCachedAyahsThroughout \nlength : ${ayahs.length} \npagination : ${ayahsThroughout.toJson()}",
      // );

      return ayahs;
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Ayah>> getCachedAyahsJuz(int juzNumber) async {
    try {
      final ayahCollection = localDBService.getCollection<Ayah>();
      final juz = await getCachedJuz(juzNumber);

      final List<Surah> surahs = [];
      final surahIdStart = juz?.surahIdStart?.parseInt ?? 1;
      final surahIdEnd = juz?.surahIdEnd?.parseInt ?? 2;
      for (int i = surahIdStart; i <= surahIdEnd; i++) {
        final surah = await getCachedSurah(i);
        if (surah == null) continue;
        surahs.add(surah);
      }

      List<Ayah> resAyahs = [];

      for (int i = 0; i < surahs.length; i++) {
        final surah = surahs[i];
        List<Ayah> ayahs = [];
        ayahs = await ayahCollection
            .filter()
            .surahEqualTo(surah.number)
            .juzEqualTo("$juzNumber")
            .findAll();

        if (ayahs.isEmpty) {
          resAyahs.clear();
          break;
        }

        resAyahs.addAll(ayahs);
      }

      return resAyahs;
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }
}
