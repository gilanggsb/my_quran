import 'package:hive_ce/hive.dart';

import '../../common.dart';

abstract class LocalDBService {
  Future<T?> init<T>();
  Future<void> write<T>(T data);
  Future<void> writeAll<T>(List<T> data);
  Future<T?> read<T>(int id);
  Future<List<T>> readAll<T>();
  Future<void> update<T>(T data);
  Future<void> updateOrRemove<T>(T object, Identifier<T> identifier);
  Future<void> delete<T>(int id);
  Future<void> deleteAll<T>();
}

abstract class IsarService extends LocalDBService {
  // IsarCollection<T> getCollection<T>();
  Future<T> writeTXN<T>(Future<T> Function() callback, {bool silent = false});
}

abstract class HiveService extends LocalDBService {
  Box<T> getCollection<T>();
}
