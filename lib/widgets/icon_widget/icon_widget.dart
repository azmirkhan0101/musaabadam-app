import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      height: height.h,
      width: width.w,
      fit: BoxFit.cover,
      color: color,
    );
  }
}
