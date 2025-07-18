import '../common.dart';

extension ListExt<T> on List<T> {
  List<U> toResponseList<U>(FromJsonT<U> fromJsonT) {
    List<U> value = <U>[];
    forEach((element) {
      value.add(fromJsonT(element));
    });
    return value;
  }

  List<T> replaceOrAdd(T obj, bool Function(T) identifier, {bool addWhenEmpty = true}) {
    final index = indexWhere(identifier);
    if (index >= 0) {
      this[index] = obj;
    } else if (addWhenEmpty) {
      add(obj);
    }
    return this;
  }

  List<T> removeOrAdd(T obj, bool Function(T) identifier, {bool addWhenEmpty = true}) {
    final index = indexWhere(identifier);
    if (index >= 0) {
      removeAt(index);
    } else if (addWhenEmpty) {
      add(obj);
    }
    return this;
  }

  List<T> removeOrAddAll(List<T> objs, bool Function(T, T) identifier, {bool addWhenEmpty = true}) {
    for (final obj in objs) {
      removeOrAdd(
        obj,
        (existing) => objs.any((compare) => identifier(existing, compare)),
        addWhenEmpty: addWhenEmpty,
      );
    }
    return this;
  }

  List<T> replaceOrAddAll(
    List<T> objs,
    bool Function(T, T) identifier, {
    bool addWhenEmpty = true,
  }) {
    for (final obj in objs) {
      replaceOrAdd(
        obj,
        (existing) => objs.any((compare) => identifier(existing, compare)),
        addWhenEmpty: addWhenEmpty,
      );
    }
    return this;
  }

  List<T> addUnique(List<T> listB, bool Function(T, T) identifier) {
    final result = <T>[];
    for (final item in this) {
      if (!result.any((e) => identifier(e, item))) {
        result.add(item);
      }
    }
    for (final item in listB) {
      if (!result.any((e) => identifier(e, item))) {
        result.add(item);
      }
    }
    return result;
  }

  List<T> unique<Id>([Id Function(T)? id, bool inplace = true]) {
    final ids = <Id>{};
    final list = inplace ? this : List<T>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }

  List<T> clone() => List<T>.from(this);

  List<T> spreadClone(List<T> list) => [...list, ...this];

  List<T> spreadAdd(T data) => [...this, data];

  bool isIdenticalTo(List<T> other, Object Function(T) identifier, {bool orderInsensitive = true}) {
    if (length != other.length) return false;

    if (!orderInsensitive) {
      for (var i = 0; i < length; i++) {
        if (identifier(this[i]) != identifier(other[i])) return false;
      }
      return true;
    }

    final countMap = <Object, int>{};
    for (final item in this) {
      final id = identifier(item);
      countMap[id] = (countMap[id] ?? 0) + 1;
    }

    for (final item in other) {
      final id = identifier(item);
      final count = countMap[id];
      if (count == null) return false;
      if (count == 1) {
        countMap.remove(id);
      } else {
        countMap[id] = count - 1;
      }
    }

    return countMap.isEmpty;
  }
}

extension NullListExt<T> on List<T>? {
  List<T> clone() => List<T>.from(this ?? []);

  List<T> spreadClone(List<T> list) => [...list, ...clone()];

  List<T> spreadAdd(T data) => [...clone(), data];
}
