import 'package:flutter/material.dart';
import 'package:musaab_adam/utils/size_config/size_config.dart';

class ImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;

  const ImageWidget({
    super.key,
    required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: SizeConfig.responsiveHeight(height),
      width: SizeConfig.responsiveWidth(width),
      fit: BoxFit.cover,
    );
  }
}
