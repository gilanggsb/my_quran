import 'dart:convert';

import 'package:collection/collection.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class QuranLocalDataSourceImpl extends QuranLocalDataSource {
  final HiveService localDBService;
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
      final surah = surahCollection.values.firstWhereOrNull((e) => e.number == surahNumber);
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
      final juz = juzCollection.values.firstWhereOrNull((e) => e.number == juzNumber);
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
        final isAyahExist = await getCachedAyah(ayah.id ?? 0) != null;
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

  @override
  Future<Ayah?> getCachedAyah(int ayahId) async {
    try {
      final ayahCollection = localDBService.getCollection<Ayah>();
      final ayah = ayahCollection.values.firstWhereOrNull((e) => e.id == ayahId);
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
      final ayahBox = localDBService.getCollection<Ayah>(); // Get the Hive box for Ayah
      final ayahs = ayahBox.values
          .where((ayah) => ayah.id == pagination.page) // Filter by id
          .take(pagination.page ?? 0) // Limit the results based on pagination
          .toList(); // Convert to a list
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
      final ayahBox = localDBService.getCollection<Ayah>(); // Get the Hive box for Ayah

// Retrieve all Ayahs from the box
      final allAyahs = ayahBox.values.toList();

// Filter the Ayahs based on the conditions
      final ayahs = allAyahs.where((ayah) {
        return ayah.surah == ayahsThroughout.surat && // Assuming surahInt is the field for surah
            (ayah.ayah ?? 0) >= (ayahsThroughout.ayat ?? 0) && // Ensure ayahInt is not null
            (ayah.ayah ?? 0) <= (ayahsThroughout.panjang ?? 0); // Ensure ayahInt is not null
      }).toList();

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
      final surahIdStart = juz?.surahIdStart ?? 1;
      final surahIdEnd = juz?.surahIdEnd ?? 2;
      for (int i = surahIdStart; i <= surahIdEnd; i++) {
        final surah = await getCachedSurah(i);
        if (surah == null) continue;
        surahs.add(surah);
      }

      List<Ayah> resAyahs = [];

      for (int i = 0; i < surahs.length; i++) {
        final surah = surahs[i];
        // Retrieve all Ayahs from the box
        final allAyahs = ayahCollection.values.toList();

        // Filter the Ayahs based on the surah number and juz number
        final ayahs = allAyahs.where((ayah) {
          return ayah.surah == surah.number && ayah.juz == juzNumber;
        }).toList();

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
