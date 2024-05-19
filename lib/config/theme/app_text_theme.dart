import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/color_constants.dart';

class AppTextTheme {
  /// edit if you have customized font
  /// static const fontFamily = 'Roboto';

  static final textLightTheme = TextTheme(
    ///DISPLAY
    displayLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),
    displayMedium: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),
    displaySmall: TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),

    //HEADLINE
    headlineLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),
    headlineMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),
    headlineSmall: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),

    //TITLE
    titleLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),
    titleMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),
    titleSmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor),

    //BODY
    bodyLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor),
    bodyMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor),
    bodySmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor),

    //LABEL
    labelLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor),
    labelMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor),
    labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor),
  );

  //DARK MODE
  static final textDarkTheme = TextTheme(
    ///DISPLAY
    displayLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),
    displayMedium: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),
    displaySmall: TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),

    //HEADLINE
    headlineLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),
    headlineMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),
    headlineSmall: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),

    //TITLE
    titleLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),
    titleMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),
    titleSmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor),

    //BODY
    bodyLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textWhiteColor),
    bodyMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textWhiteColor),
    bodySmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textWhiteColor),

    //LABEL
    labelLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textWhiteColor),
    labelMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textWhiteColor),
    labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textWhiteColor),
  );
}
