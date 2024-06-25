import 'package:docdoc/core/theming/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextButton extends StatelessWidget
{
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double? borderRadius;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;

  const MyTextButton({
    super.key,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.borderRadius,
    this.buttonWidth,
    this.buttonHeight,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding
  });

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite,buttonHeight?.h ?? 50.h)
        ),
        padding: MaterialStateProperty.all(
         EdgeInsets.symmetric(
           vertical: verticalPadding?.h ?? 14.h,
           horizontal: horizontalPadding?.w ?? 12.w,
         ),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? MyColors.myPrimaryColor,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Text(
          buttonText,
        style: textStyle,
      ),
    );
  }
}
