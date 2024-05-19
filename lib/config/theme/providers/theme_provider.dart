import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../core/utils/shared_prefs.dart';


class ThemeProvider extends ChangeNotifier {
  // constructer
  ThemeProvider() {
    _initializeThemeFromSharedPrefs();
  }

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get getThemeMode => _themeMode;

  _initializeThemeFromSharedPrefs() {
    final isDarkMode =
        SharedPrefs.instance.getBool(KeyConstants.kDarkMode) ?? false;
    _themeMode = _getThemeMode(isDarkMode);
    notifyListeners();
  }

  void changeTheme(bool isDarkMode) {
    _themeMode = _getThemeMode(isDarkMode);
    SharedPrefs.instance.setBool(KeyConstants.kDarkMode, isDarkMode);
  }

  ThemeMode _getThemeMode(bool isDarkMode) {
    return isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }
}
