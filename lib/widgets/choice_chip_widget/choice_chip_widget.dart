import 'package:flutter/material.dart';

import '../../utils/app_colors/app_colors.dart';
import '../text_widget/text_widgets.dart';

class ChoiceChipWidget extends StatelessWidget {

  final String label;
  final bool selected;
  final bool showShadow;
  final bool colorChangeable;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final Widget? trailing;
  final Function(bool) onSelected;
  const ChoiceChipWidget ({
    super.key,
    required this.label,
    this.trailing,
    required this.selected,
    this.showShadow = false,
    this.colorChangeable = false,
    this.borderRadius = 0,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    required this.onSelected
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: selected,
      showCheckmark: false,
      selectedColor: selected && colorChangeable ? AppColors.brandColor : AppColors.brandColorShade,
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
      elevation: 4,
      shadowColor: showShadow ? AppColors.brandColorShade : Colors.transparent,
      backgroundColor: selected && colorChangeable ? AppColors.brandColor : AppColors.brandColorShade,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide( width: borderWidth, color: borderColor)
      ),
      label: Row(
        children: [
          TextWidget(
            text: label,
            fontColor: selected && colorChangeable ? AppColors.white : AppColors.brandColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          trailing ?? SizedBox.shrink()
        ],
      ),
      onSelected: (bool isSelected){
        onSelected(isSelected);
      },
    );
  }
}
