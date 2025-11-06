import 'package:flutter/material.dart';

import '../../utils/app_colors/app_colors.dart';
import '../../utils/size_config/size_config.dart';
import '../icon_widget/icon_widget.dart';
import '../text_widget/text_widgets.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final String? prefixIcon;
  final IconData? icon;
  final double? iconHeight;
  final double? iconWidth;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback? onPressed;
  final double buttonHeight;
  final double buttonWidth;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry buttonRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;
  final double? iconSize;

  const ButtonWidget({
    super.key,
    required this.label,
    this.icon,
    this.prefixIcon,
    this.iconHeight,
    this.iconWidth,
    this.textColor = AppColors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.onPressed,
    this.buttonHeight = 56,
    this.buttonWidth = 200,
    this.padding,
    this.buttonRadius = const BorderRadius.all(Radius.circular(100)),
    this.backgroundColor,
    this.borderColor,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.black,
        borderRadius: buttonRadius,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: 1,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              IconWidget(
                icon: prefixIcon!,
                color: AppColors.white,
                height: 22,
                width: 22,
              ),
            if (prefixIcon != null) SizedBox(width: SizeConfig.responsiveWidth(12),),
            TextWidget(
              text: label,
              fontColor: textColor,
              responsiveFontSize: fontSize,
              fontWeight: fontWeight,
            ),
            if (icon != null) const SizedBox(width: 12),
            if (icon != null)
              Icon(
                icon,
                color: iconColor ?? textColor,
                size: iconSize ?? fontSize,
              ),
          ],
        ),
      ),
    );
  }
}
