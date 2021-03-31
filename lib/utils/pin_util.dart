mixin PinUtil {
  bool isPinSame(List<int> pin, List<int> confirmPin) {
    for (int i = 0; i < pin.length; i++) {
      if (pin[i] != confirmPin[i]) {
        return false;
      }
    }
    return true;
  }
}
