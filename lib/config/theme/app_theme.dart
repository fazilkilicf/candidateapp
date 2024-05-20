import 'package:flutter/material.dart';
import '../../core/constants/color_constants.dart';
import 'app_text_theme.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      textTheme: AppTextTheme.textLightTheme,
      // edit if you have customized font
      // fontFamily: GoogleFonts.dosis().fontFamily,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      primaryColor: AppColors.primaryColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.greenButton,
        disabledBackgroundColor: AppColors.greenButton.withOpacity(0.3),
        textStyle: AppTextTheme.textLightTheme.bodyLarge,
      )),
      snackBarTheme:
          const SnackBarThemeData(behavior: SnackBarBehavior.floating));

  static final darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    textTheme: AppTextTheme.textDarkTheme,
    // edit if you have customized font
    // fontFamily: GoogleFonts.dosis().fontFamily,
    scaffoldBackgroundColor: AppColors.scaffoldDarkBackgroundColor,
    primaryColor: AppColors.primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.greenButton,
      disabledBackgroundColor: AppColors.greenButton.withOpacity(0.3),
      textStyle: AppTextTheme.textLightTheme.bodyLarge,
    )),
  );
}
