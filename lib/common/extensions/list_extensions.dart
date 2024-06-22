import '../common.dart';

extension ListExt on List {
  List<T> toResponseList<T>(FromJsonT<T> fromJsonT) {
    List<T> value = <T>[];
    forEach((element) {
      value.add(fromJsonT(element));
    });
    return value;
  }

  List<T> replaceOrAdd<T>(T obj, dynamic Function(T) identifier,
      {bool addWhenEmpty = true}) {
    int index = indexWhere((element) => identifier(element) == identifier(obj));
    if (index >= 0) {
      removeAt(index);
      insert(index, obj);
    } else {
      if (addWhenEmpty) add(obj);
    }
    return this as List<T>;
  }
}
