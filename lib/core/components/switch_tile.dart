import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/app_colors.dart';
import '../../core/widgets/custom_text.dart';

class SwitchTile extends StatelessWidget {
  final String title;
  final bool isIconDefault;
  final IconData? defaultIcon;
  final String? svgIconPath;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.isIconDefault = true,
    this.defaultIcon,
    this.svgIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: isIconDefault
            ? Icon(
          defaultIcon ?? Icons.notifications,
          color: AppColors.white,
        )
            : SvgPicture.asset(svgIconPath!),
        title: CustomText(
          text: title,
          fontColor: AppColors.white,
          fontWeight: FontWeight.w700,
          textAlignment: TextAlign.start,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          fontSize: 16,
        ),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.white,
          activeTrackColor: Colors.greenAccent.withOpacity(0.5),
          inactiveThumbColor: AppColors.white,
          inactiveTrackColor: Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}