import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final TextDecoration? decoration;
  final Color decorationColor;
  final double decorationThickness;

  const TextButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    required this.textColor,
    this.fontSize = 18,
    this.fontStyle = FontStyle.normal,
    required this.fontWeight,
    this.decoration,
    this.decorationColor = AppColors.black50Percent,
    this.decorationThickness = 3,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(50, 30),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,
        
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontStyle: fontStyle,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationThickness: decorationThickness.h,
        ),
      ),
    );
  }
}
