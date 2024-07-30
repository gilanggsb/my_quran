import '../../../../features.dart';

abstract class QuranLocalDataSource {
  Future<LastReadAyah?> getLastReadAyah();
  Future<void> saveLastReadAyah(LastReadAyah lastRead);
}
