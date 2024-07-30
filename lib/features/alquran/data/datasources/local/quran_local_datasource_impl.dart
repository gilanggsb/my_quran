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

}
