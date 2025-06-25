// // ignore_for_file: depend_on_referenced_packages
// import 'dart:async';
// import 'dart:io';

// import 'package:isar/isar.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';

// import '../../../features/features.dart';
// import '../../common.dart';

// const collectionFreezed = Collection(ignore: {'copyWith'});
// class IsarServiceImpl extends IsarService {
//   late Isar isar;

//   static List<CollectionSchema> get isarSchemas {
//     return [
//       AyahSchema,
//       SurahSchema,
//       JuzSchema,
//       BookmarkCategorySchema,
//       BookmarkDataSchema,
//     ];
//   }

//   @override
//   Future<T?> init<T>() async {
//     final dir = await getApplicationDocumentsDirectory();
//     final isarDir = Directory(p.join(dir.path, 'isar'));

//     if (!await isarDir.exists()) {
//       await isarDir.create(recursive: true);
//     }

//     isar = await Isar.open(
//       IsarServiceImpl.isarSchemas,
//       directory: isarDir.path,
//     );
//     return null;
//   }

//   @override
//   IsarCollection<T> getCollection<T>() {
//     return isar.collection<T>();
//   }

//   @override
//   Future<void> write<T>(T data) async {
//     await isar.writeTxn(() async {
//       await getCollection<T>().put(data);
//     });
//   }
  
//   @override
//   Future<void> writeAll<T>(List<T> data) async {
//     await isar.writeTxn(() async {
//       await getCollection<T>().putAll(data);
//     });
//   }

//   @override
//   Future<T?> read<T>(int id) async {
//     return await getCollection<T>().get(id);
//   }

//   @override
//   Future<List<T>> readAll<T>() async {
//     return await getCollection<T>().where().findAll();
//   }

//   @override
//   Future<void> update<T>(T data) async {
//     await isar.writeTxn(() async {
//       await getCollection<T>().put(data);
//     });
//   }

//   @override
//   Future<void> delete<T>(int id) async {
//     await isar.writeTxn(() async {
//       await getCollection<T>().delete(id);
//     });
//   }

//   @override
//   Future<void> deleteAll<T>() async {
//     await isar.writeTxn(() async {
//       await getCollection<T>().clear();
//     });
//   }

//   @override
//   Future<void> updateOrRemove<T>(T object, Identifier<T> identifier) async {
//     final removedId = identifier(object);
//     final isInIsarDatabase = await read<T>(removedId) != null;
//     if (isInIsarDatabase) {
//       return await delete<T>(removedId);
//     }

//     await write<T>(object);
//   }
  
//   @override
//   Future<T> writeTXN<T>(Future<T> Function() callback, {bool silent = false}) {
//     return isar.writeTxn<T>(callback, silent: silent);
//   }
// }
