// ignore_for_file: depend_on_referenced_packages
import 'dart:async';

import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../features/features.dart';
import '../../common.dart';

// const collectionFreezed = Collection(ignore: {'copyWith'});

class HiveServiceImpl extends HiveService {
  final ayahBoxName = 'ayah_box';
  final juzBoxName = 'juz_box';
  final surahBoxName = 'surah_box';
  final bookmarkCategoryBoxName = 'bookmark_category_box';
  final bookmarkDataBoxName = 'bookmark_data_box';

  late Box<Ayah> ayahBox; // Assuming Ayah is one of your models
  late Box<Surah> surahBox; // Assuming Surah is another model
  late Box<Juz> juzBox; // Assuming Juz is another model
  late Box<BookmarkCategory> bookmarkCategoryBox; // Assuming BookmarkCategory is another model
  late Box<BookmarkData> bookmarkDataBox; // Assuming BookmarkData is another model

  static List<String> get hiveBoxNames {
    return [
      'ayahs',
      'surahs',
      'juzs',
      'bookmarkCategories',
      'bookmarkData',
    ];
  }

  @override
  Future<T?> init<T>() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AyahAdapter());
    Hive.registerAdapter(JuzAdapter());
    Hive.registerAdapter(SurahAdapter());
    Hive.registerAdapter(BookmarkCategoryAdapter());
    Hive.registerAdapter(BookmarkDataAdapter());
    final [resAyahBox, resJusBox, resSurahBox, resBookmarkCategoryBox, resBookmarkDataBox] = await [
      Hive.openBox<Ayah>(ayahBoxName),
      Hive.openBox<Juz>(juzBoxName),
      Hive.openBox<Surah>(surahBoxName),
      Hive.openBox<BookmarkCategory>(bookmarkCategoryBoxName),
      Hive.openBox<BookmarkData>(bookmarkDataBoxName),
    ].wait;

    ayahBox = resAyahBox as Box<Ayah>;
    juzBox = resJusBox as Box<Juz>;
    surahBox = resSurahBox as Box<Surah>;
    bookmarkCategoryBox = resBookmarkCategoryBox as Box<BookmarkCategory>;
    bookmarkDataBox = resBookmarkDataBox as Box<BookmarkData>;

    return null;
  }

  @override
  Box<T> getCollection<T>() {
    if (T == Ayah) return ayahBox as Box<T>;
    if (T == Surah) return surahBox as Box<T>;
    if (T == Juz) return juzBox as Box<T>;
    if (T == BookmarkCategory) return bookmarkCategoryBox as Box<T>;
    if (T == BookmarkData) return bookmarkDataBox as Box<T>;
    throw Exception('Collection not found for type $T');
  }

  @override
  Future<void> write<T>(T data) async {
    if (data is Ayah) {
      await ayahBox.put(data.idInt ?? 0, data);
    } else if (data is Juz) {
      await juzBox.put(data.number, data);
    } else if (data is Surah) {
      await surahBox.put(data.number, data);
    } else if (data is BookmarkCategory) {
      await bookmarkCategoryBox.put(data.id, data);
    } else if (data is BookmarkData) {
      await bookmarkDataBox.put(data.id, data);
    } else {
      throw Exception('Unsupported type');
    }
  }

  @override
  Future<void> writeAll<T>(List<T> data) async {
    // List<Future<void>> bulkWrites = [];
    for (var item in data) {
      await write<T>(item);
      // bulkWrites.add(write<T>(item)); // Assuming each model has a unique id
    }
    // await Future.wait(bulkWrites);
  }

  @override
  Future<T?> read<T>(int id) async {
    return getCollection<T>().get(id);
  }

  @override
  Future<List<T>> readAll<T>() async {
    return getCollection<T>().values.toList();
  }

  @override
  Future<void> update<T>(T data) async {
    await getCollection<T>().put((data as dynamic).id, data); // Assuming each model has a unique id
  }

  @override
  Future<void> delete<T>(int id) async {
    await getCollection<T>().delete(id);
  }

  @override
  Future<void> deleteAll<T>() async {
    await getCollection<T>().clear();
  }

  @override
  Future<void> updateOrRemove<T>(T object, Identifier<T> identifier) async {
    final removedId = identifier(object);
    final isInHiveDatabase = await read<T>(removedId) != null;
    if (isInHiveDatabase) {
      return await delete<T>(removedId);
    }

    await write<T>(object);
  }

  // @override
  // Future<T> writeTXN<T>(
  //   Future<T> Function() callback, {
  //   bool silent = false,
  // }) async {
  //   // Hive does not have a direct equivalent for transactions, but you can use a simple approach
  //   return await callback();
  // }
}
