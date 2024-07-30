import 'package:isar/isar.dart';

import '../../common.dart';

abstract class LocalDBService {
  Future<T?> init<T>();
  Future<void> write<T>(T data);
  Future<T?> read<T>(int id);
  Future<List<T>> readAll<T>();
  Future<void> update<T>(T data);
  Future<void> updateOrRemove<T>(T object, Identifier<T> identifier);
  Future<void> delete<T>(int id);
  Future<void> deleteAll<T>();
}

abstract class IsarService extends LocalDBService {
  IsarCollection<T> getCollection<T>();
}
