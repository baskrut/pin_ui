import 'package:pin_auth_ui/services/storage_service/storage_service.dart';

class StorageRepository {
  static void savePin(List<int> pin) {
    print('pin.toString() = ${pin.toString()}');
    LocalStorageService.instance.saveValueByKey(
      StorageKeys.pin,
      pin.toString(),
    );
  }

  static Future<String> getPin() async {
    return await LocalStorageService.instance.getValueByKey(StorageKeys.pin);
  }
}
