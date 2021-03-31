import 'package:flutter/cupertino.dart';
import 'package:pin_auth_ui/repositories/storage_repository.dart';
import 'package:pin_auth_ui/res/strings.dart';
import 'package:pin_auth_ui/utils/pin_util.dart';

class PinProvider with ChangeNotifier, PinUtil {
  bool isFirstEnter = true;
  final List<int> setupPin = [];
  final List<int> confirmPin = [];
  final List<int> pin = [];

  String message;

  void addToSetupPin(int i) {
    if (isFirstEnter) {
      setupPin.add(i);

      if (setupPin.length >= 4) {
        isFirstEnter = false;
      }
    } else {
      confirmPin.add(i);

      if (confirmPin.length == 4) {
        if (isPinSame(setupPin, confirmPin)) {
          StorageRepository.savePin(confirmPin);
          message = SETUP_SUCCESSFULLY;
        } else {
          confirmPin.clear();

          message = DIFFERENT_PIN;
        }
      }
    }
    notifyListeners();
  }

  void addToPin(int i) async {
    final String savedPin = await StorageRepository.getPin();

    pin.add(i);

    notifyListeners();
    if (pin.length >= 4) {
      if (pin.toString() == savedPin) {
        message = AUTH_SUCCESS;
      } else {
        pin.clear();

        message = WRONG_PIN;
      }
    }
  }

  void deleteSetupPin() {
    if (isFirstEnter && confirmPin.isNotEmpty) {
      setupPin.removeLast();
    } else if (!isFirstEnter && setupPin.isNotEmpty) {
      confirmPin.removeLast();
    }
    notifyListeners();
  }

  void deletePin() {
    if (pin.isNotEmpty) {
      pin.removeLast();
    }
    notifyListeners();
  }
}
