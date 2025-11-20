import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_colors/app_colors.dart';
import '../../utils/global_helper/global_helper.dart';

class TextFieldWidget extends StatelessWidget {

  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final String? obscureIcon;
  final IconData? prefixIcon;
  final double borderRadius;
  final bool showCounter;
  final int maxLines;
  final int maxLength;
  final Color borderColor;

  const TextFieldWidget({
    super.key,
    required this.hint,
    required this.controller,
    this.obscureText = false,
    this.obscureIcon,
    this.prefixIcon,
    this.borderRadius = 0,
    this.showCounter = false,
    this.maxLines = 1,
    this.maxLength = 30,
    this.borderColor = AppColors.orange
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 20.h,
      cursorWidth: 1.w,
      maxLines: maxLines,
      maxLength: maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      controller: controller,
      obscureText: obscureText,
      cursorColor: AppColors.orange80Percent,
      decoration: InputDecoration(
        suffixIconConstraints: BoxConstraints(
          maxHeight: 12.75.h,
          maxWidth: 38.w,
        ),
        prefixIcon: prefixIcon == null ? null : Icon( prefixIcon ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 18.w),
          child: !obscureText ? SizedBox.shrink() : SvgPicture.asset(
            obscureIcon!,
            height: 20.h,
            width: 20.w,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: AppColors.black30Percent, fontSize: 16.sp, letterSpacing: letterSpacingFromFigma(-2, 16)),
        contentPadding: EdgeInsets.symmetric( horizontal: 12, vertical: 8),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: 1.w,
              color: borderColor,
            )
        ),
        focusedBorder: OutlineInputBorder(
            gapPadding: 1,
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: 1.w,
              color: AppColors.orange,
            )
        ),
      ),
      buildCounter: (
          BuildContext context, {
            required int currentLength,
            required bool isFocused,
            required int? maxLength,
          }) {
        return !showCounter ? SizedBox.shrink() : Padding(
          padding: const EdgeInsets.only(top: 4.0, right: 8.0),
          child: Text(
            '$currentLength / ${maxLength}',
            style: TextStyle(
              fontSize: 12,
              color: currentLength >= 500 ? Colors.red : Colors.grey,
            ),
          ),
        );
      },
    );
  }
}
