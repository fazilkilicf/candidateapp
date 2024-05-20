import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.labelText,
      this.hintText,
      this.keyboardType,
      this.textStyle,
      this.hintStyle,
      this.labelStyle,
      this.validator,
      this.border,
      this.focusedBorder,
      this.suffixIcon,
      this.hasError,
      this.errorIcon,
      this.onChanged});

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final Widget? suffixIcon;
  final bool? hasError;
  final Widget? errorIcon;
  final Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: widget.textStyle ??
          context.textTheme.labelLarge?.copyWith(color: AppColors.darkGrey),
      cursorHeight: 16,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      validator: widget.validator,
      onChanged: (value) {
        setState(() => _isEmpty = !Validator.validateIsNotEmpty(input: value));
        widget.onChanged!(value);
      },
      decoration: InputDecoration(
        labelStyle: widget.labelStyle ?? context.textTheme.labelSmall,
        hintStyle: widget.hintStyle ?? context.textTheme.labelLarge,
        contentPadding: const EdgeInsets.only(bottom: 3.5),
        isDense: true,
        enabledBorder: widget.border ??
            UnderlineInputBorder(
                borderSide: BorderSide(
                    color: (widget.hasError ?? false)
                        ? AppColors.errorColor
                        : AppColors.shadowColor)),
        focusedBorder: widget.focusedBorder ??
            const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.yellow)),
        suffix: _isEmpty ? null : widget.suffixIcon,
        suffixIcon: (widget.hasError ?? false)
            ? Padding(
                padding: EdgeInsets.fromLTRB(10.w, 10.h, 0, 10.h),
                child: widget.errorIcon,
              )
            : null,
        labelText: widget.labelText,
        hintText: widget.hintText,
      ),
    );
  }
}
