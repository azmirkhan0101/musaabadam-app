import 'package:flutter/material.dart';
import 'package:musaab_adam/utils/size_config/size_config.dart';

class SizedBoxWidget extends StatelessWidget {

  final double height;
  final double width;
  final Widget? child;

  const SizedBoxWidget({
    super.key,
    this.height = 0,
    this.width = 0,
    this.child
  });

  @override
  Widget build(BuildContext context) {

    SizeConfig.init(context);

    return SizedBox(
      height: SizeConfig.responsiveHeight(height),
      width: SizeConfig.responsiveWidth(width),
      child: child,
    );
  }
}
