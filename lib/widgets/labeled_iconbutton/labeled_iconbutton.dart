import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

class LabeledIconButton extends StatelessWidget {
  final double iconHeight;
  final double iconWidth;
  final double borderWidth;
  final String iconPath;
  final double borderRadius;
  final Color color;
  final Color borderColor;
  final bool isLabelInside;
  final double gap;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double horizontalPadding;
  final double verticalPadding;
  final VoidCallback? onClick;

  const LabeledIconButton({
    super.key,
    required this.iconPath,
    this.iconHeight = 20,
    this.iconWidth = 20,
    this.gap = 3,
    required this.text,
    this.borderRadius = 100,
    this.color = AppColors.brandColor,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.isLabelInside = false,
    this.fontColor = AppColors.black,
    this.fontWeight = FontWeight.w700,
    this.fontSize = 14,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
    this.onClick
  });

  @override
  Widget build(BuildContext context) {
    //RETURN COLUMN IF LABEL IS NOT INSIDE
    return isLabelInside
        ? GestureDetector(
      onTap: onClick,
          child: Container(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
              decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: borderWidth),
                borderRadius: BorderRadius.circular(borderRadius),
                color: color,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: iconHeight.r,
                    width: iconWidth.r,
                    child: SvgPicture.asset(
                      iconPath,
                      height: iconHeight.r,
                      width: iconWidth.r,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  TextWidget(
                    text: text,
                    fontWeight: fontWeight,
                    fontSize: fontSize.sp,
                    fontColor: fontColor,
                  ),
                ],
              ),
            ),
        )
        : Column(
            children: [
              IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor, width: borderWidth),
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: color,
                  ),
                  child: Center(
                    child: SizedBox(
                      height: iconHeight.r,
                      width: iconWidth.r,
                      child: SvgPicture.asset(
                        iconPath,
                        height: iconHeight.r,
                        width: iconWidth.r,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBoxWidget(height: gap),
              !text.isEmpty ? TextWidget(
                text: text,
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
                fontColor: fontColor,
              ) : SizedBox.shrink(),
            ],
          );
  }
}
