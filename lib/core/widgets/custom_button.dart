import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final String? prefixSvgIcon;
  final double prefixIconSize;
  final Color? prefixIconColor;
  final IconData? icon;
  final double? iconHeight;
  final double? iconWidth;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback? onPressed;
  final double buttonHeight;
  final double? buttonWidth;
  final EdgeInsetsGeometry? padding;
  final double buttonRadius;
  final Color? backgroundColor; // Now nullable to support theme defaults
  final Color? borderColor;
  final Color? iconColor;
  final double? iconSize;
  final double borderWidth;
  final Gradient? gradient;
  final bool isEnabled;
  final Color? disabledColor;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.label,
    this.icon,
    this.prefixIcon,
    this.prefixSvgIcon,
    this.prefixIconSize = 20,
    this.prefixIconColor,
    this.iconHeight,
    this.iconWidth,
    this.textColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.onPressed,
    this.buttonHeight = 50,
    this.buttonWidth,
    this.padding,
    this.buttonRadius = 50,
    this.backgroundColor,
    this.borderColor,
    this.iconColor,
    this.iconSize,
    this.borderWidth = 0,
    this.gradient,
    this.isEnabled = true,
    this.disabledColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Default to Primary color if backgroundColor is null
    final Color effectiveBackgroundColor = isEnabled
        ? (backgroundColor ?? theme.primaryColor)
        : (disabledColor ?? theme.disabledColor);

    // Default text color to surface (contrast color) if not provided
    final Color effectiveTextColor = textColor ?? theme.colorScheme.onPrimary;

    return Container(
      height: buttonHeight.h,
      width: buttonWidth?.w,
      decoration: BoxDecoration(
        gradient: isEnabled ? gradient : null,
        color: (isEnabled && gradient != null) ? null : effectiveBackgroundColor,
        borderRadius: BorderRadius.circular(buttonRadius.r),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: borderWidth.r)
            : null,
      ),
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius.r),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 0,
        ),
        child: isLoading
            ? Center(
          child: SizedBox(
            height: 20.h,
            width: 20.h,
            child: CircularProgressIndicator(
              color: effectiveTextColor,
              strokeWidth: 2.5,
            ),
          ),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            if (prefixIcon != null)
              Icon(
                prefixIcon,
                color: (prefixIconColor ?? effectiveTextColor).withValues(alpha: isEnabled ? 1.0 : 0.5),
                size: prefixIconSize.r,
              ),
            if (prefixSvgIcon != null)
              SvgPicture.asset(
                prefixSvgIcon!,
                colorFilter: ColorFilter.mode(
                  (prefixIconColor ?? effectiveTextColor).withValues(alpha: isEnabled ? 1.0 : 0.5),
                  BlendMode.srcIn,
                ),
                height: iconHeight?.h,
                width: iconWidth?.w,
              ),
            if (prefixIcon != null || prefixSvgIcon != null) SizedBox(width: 12.w),
            CustomText(
              text: label,
              fontColor: effectiveTextColor.withValues(alpha: isEnabled ? 1.0 : 0.6),
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
            ),
            if (icon != null) ...[
              SizedBox(width: 12.w),
              Icon(
                icon,
                color: (iconColor ?? effectiveTextColor).withValues(alpha: isEnabled ? 1.0 : 0.5),
                size: (iconSize ?? fontSize).r,
              ),
            ],
          ],
        ),
      ),
    );
  }
}