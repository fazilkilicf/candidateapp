import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeviceUtility {
  DeviceUtility._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static showStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);

  static hideStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  static Future<bool> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
      return true;
    } else {
      return false;
    }
  }
}
