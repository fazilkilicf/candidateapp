import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core.dart';

class CustomTextPasswordField extends StatefulWidget {
  const CustomTextPasswordField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.obscureText = true,
    this.obscuringCharacter = "*",
    this.textStyle,
    this.hintStyle,
    this.labelStyle,
    this.validator,
    this.border,
    this.focusedBorder,
    this.onChanged,
  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final String obscuringCharacter;
  final String? Function(String?)? validator;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final Function(String)? onChanged;

  @override
  State<CustomTextPasswordField> createState() =>
      _CustomTextPasswordFieldState();
}

class _CustomTextPasswordFieldState extends State<CustomTextPasswordField> {
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: widget.textStyle ??
          context.textTheme.labelLarge?.copyWith(color: AppColors.darkGrey),
      cursorHeight: 16,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      obscureText: _isObscure,
      obscuringCharacter: widget.obscuringCharacter,
      validator: widget.validator,
      onChanged: (value) => widget.onChanged!(value),
      decoration: InputDecoration(
        labelStyle: widget.labelStyle ?? context.textTheme.labelSmall,
        hintStyle: widget.hintStyle ?? context.textTheme.labelLarge,
        contentPadding: const EdgeInsets.only(bottom: 3.5),
        isDense: true,
        enabledBorder: widget.border ??
            UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.shadowColor)),
        focusedBorder: widget.focusedBorder ??
            const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.yellow)),
        suffix: GestureDetector(
          onTap: () => setState(() => _isObscure = !_isObscure),
          child: Image.asset(PathConstants.visibilityIcon,
              width: 22.w,
              height: 22.h,
              color: _isObscure ? AppColors.shadowColor : AppColors.yellow),
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
      ),
    );
  }
}
