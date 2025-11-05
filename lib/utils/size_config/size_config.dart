import 'package:flutter/widgets.dart';

class SizeConfig {
  static late TextScaler textScaler;
  static late double screenWidth;
  static late double screenHeight;
  static late double figmaWidth;
  static late double figmaHeight;

  static void init(BuildContext context,
      {double designWidth = 375, double designHeight = 812}) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    textScaler = MediaQuery.textScalerOf(context);

    figmaWidth = designWidth;
    figmaHeight = designHeight;
  }

  static double responsiveWidth(double inputWidth) {
    return (inputWidth / figmaWidth) * screenWidth;
  }

  static double responsiveHeight(double inputHeight) {
    return (inputHeight / figmaHeight) * screenHeight;
  }

  static double responsiveFontSize(double size) {
  return textScaler.scale(size);
}

}


