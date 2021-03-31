import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService {
  final FlutterSecureStorage _service = FlutterSecureStorage();

  LocalStorageService._privateConstructor();

  static final LocalStorageService _instance = LocalStorageService._privateConstructor();

  static LocalStorageService get instance => _instance;

  final Map<StorageKeys, String> _keys = {
    StorageKeys.pin: 'pin',
  };

  Future<bool> getValueExistsByKey(StorageKeys key) async {
    return await _service.read(key: _keys[key]) != null;
  }

  Future<String> getValueByKey(StorageKeys key) async {
    try {
      final String value = await _service.read(key: _keys[key]);

      return value;
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteValueByKey(StorageKeys key) async {
    await _service.delete(key: _keys[key]);
  }

  Future<void> saveValueByKey(StorageKeys key, String value) async {
    await _service.write(key: _keys[key], value: value);
  }
}

enum StorageKeys {
  pin,
}
