import 'dart:html' as html;

class AppConstant {
  static double minimumWidth = 1100;
  static double maxAppWidth = 1920;
  static double maxBodyWith = 1200;

  static String getOS() {
    String modifierKeyPrefix = "^"; // control key
    if (html.window.navigator.platform!.indexOf("Mac") == 0 ||
        html.window.navigator.platform == "iPhone") {
      modifierKeyPrefix = "⌘"; // command key
    }
    return modifierKeyPrefix;
  }
}
