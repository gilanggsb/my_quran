import 'dart:convert';

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
}
