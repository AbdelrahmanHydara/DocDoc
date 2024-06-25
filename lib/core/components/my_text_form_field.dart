import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFormField extends StatelessWidget {

  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Color? fillColor;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Function(String?) validator;

  const MyTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.obscureText,
    this.hintStyle,
    this.style,
    this.fillColor,
    this.controller,
    required this.validator,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      controller: controller,
      style: style ?? MyTextStyles.font14DarkBlueMedium,
      obscureText: obscureText ?? false,
      validator: (value) => validator(value),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: fillColor ?? MyColors.myMoreLightGery,
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h,
        ),
        hintStyle: hintStyle ?? MyTextStyles.font14LightGeryRegular,
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.myPrimaryColor,
            width: 1.4,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.myLighterGery,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.myRed,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.myRed,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
