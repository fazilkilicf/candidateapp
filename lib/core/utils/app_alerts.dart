import 'package:candidateapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAlerts {
  const AppAlerts._();

  static displaySnackbar(
      {required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
        duration: const Duration(seconds: 3),
        content: Container(
            width: 336.w,
            height: 94.h,
            padding: EdgeInsets.fromLTRB(25.w, 24.h, 25.w, 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              color: AppColors.lightColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  PathConstants.errorIcon,
                  width: 26.w,
                  height: 23.h,
                ),
                gapW12,
                Expanded(
                  child: Text(
                    message,
                    style: context.textTheme.labelLarge?.copyWith(color: AppColors.darkGrey),
                    textAlign: TextAlign.left,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )),
        backgroundColor: context.colorScheme.onSecondary,
      ),
    );
  }
}
