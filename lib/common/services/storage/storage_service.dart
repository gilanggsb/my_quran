import 'package:get_storage/get_storage.dart';
import 'package:my_quran/common/common.dart';

abstract class StorageService {
  Future<bool> containsKey(StorageKeys key);
  Future<void> remove(StorageKeys key);
  Future<String?> get(StorageKeys key);
  Future<void> save({required StorageKeys key, required String value});
  Future<void> erase();
  Future<String?> getCurrentTheme();
  Future<void> switchTheme(bool value);
}

class StorageServiceImpl extends StorageService {
  final GetStorage storage;
  StorageServiceImpl(this.storage);

  @override
  Future<void> save({required StorageKeys key, required String value}) async {
    Logger.logInfo(
      "StorageService \nMethod : save \nkey : ${key.value} \ndata : $value",
    );
    await storage.write(key.value, value);
  }

  @override
  Future<String?> get(StorageKeys key) async {
    var data = await storage.read(key.value);
    Logger.logInfo(
      "StorageService \nMethod : get \nkey : ${key.value} \ndata : $data",
    );
    return data;
  }

  @override
  Future<void> remove(StorageKeys key) async {
    Logger.logInfo(
      "StorageService \nMethod : remove \nkey : ${key.value} ",
    );
    await storage.remove(key.value);
  }

  @override
  Future<bool> containsKey(StorageKeys key) async {
    Logger.logInfo(
      "StorageService \nMethod : containsKey \nkey :  ${key.value} ",
    );
    var containsKey = storage.hasData(key.value);
    return containsKey;
  }

  @override
  Future<void> erase() async {
    Logger.logInfo("StorageService \nMethod : erase all data");
    await storage.erase();
  }

  @override
  Future<String?> getCurrentTheme() async {
    return await get(StorageKeys.theme);
  }

  @override
  Future<void> switchTheme(bool value) async {
    return await save(key: StorageKeys.theme, value: value ? "dark" : "light");
  }
}
