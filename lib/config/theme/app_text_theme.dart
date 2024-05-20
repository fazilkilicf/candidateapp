import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/color_constants.dart';

class AppTextTheme {
  /// edit if you have customized font
  static const fontFamily = 'OpenSans';

  static final textLightTheme = TextTheme(
    ///DISPLAY
    displayLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.darkBlue),

    //HEADLINE
    headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey),
    headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey),

    //TITLE
    /* titleLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor), */

    //BODY
    bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.lightColor),

    //LABEL
    labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.shadowColor),
    labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.shadowColor),
  );

  //DARK MODE
  static final textDarkTheme = TextTheme(
    ///DISPLAY
    displayLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.darkBlue),

    //HEADLINE
    headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey),
    headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey),

    //TITLE
    /* titleLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.textWhiteColor), */

    //BODY
    bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.lightColor),

    //LABEL
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.shadowColor,
    ),
    labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.shadowColor),
  );
}
