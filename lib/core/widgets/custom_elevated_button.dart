import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.text,
    this.textColor,
    this.backgroundColor,
    this.buttonWidth,
    this.buttonHeight,
    this.onPressed,
    this.enable = true,
    this.isLoading = false,
  });

  final String? text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final Function()? onPressed;
  final bool? enable;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? 304.w,
      height: buttonHeight ?? 43.h,
      child: ElevatedButton(
        onPressed: (isLoading ?? false)
            ? null
            : (enable ?? true)
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0.r),
            )),
        child: (isLoading ?? false)
            ? const CircularProgressIndicator()
            : Text(text ?? ""),
      ),
    );
  }
}
