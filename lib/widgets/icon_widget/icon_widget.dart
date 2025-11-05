import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musaab_adam/utils/size_config/size_config.dart';

class IconWidget extends StatelessWidget {
  final double height;
  final double width;
  final String icon;
  final Color? color;

  const IconWidget({
    super.key,
    required this.height,
    required this.width,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: SizeConfig.responsiveHeight(height),
      width: SizeConfig.responsiveWidth(width),
      fit: BoxFit.cover,
      color: color,
    );
  }
}
