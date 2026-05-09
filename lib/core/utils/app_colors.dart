import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {

  static bool get isDark => Get.isDarkMode;

  static const Color white = Color(0xFFFFFFFF);

  /// =========================
  /// BASE COLORS
  /// =========================

  static Color get backgroundColor =>
      isDark
          ? const Color(0xFF252525)
          : const Color(0xFFFFFFFF);

  static Color get textColor =>
      isDark
          ? const Color(0xFFEFEFEF) // White text on dark background
          : const Color(0xFF252525); // Dark text on white background

  static Color get offWhite =>
      isDark
          ? const Color(0xFF1A1A1A)
          : const Color(0xFFF8F7F7);

  static Color get antiFlashWhite =>
      isDark
          ? const Color(0xFF232323)
          : const Color(0xFFECEDF2);

  static Color get black =>
      isDark
          ? const Color(0xFFFFFFFF)
          : const Color(0xFF000000);



  /// =========================
  /// BLACK OPACITY COLORS
  /// =========================

  static Color get black80Percent =>
      isDark
          ? const Color(0xCCFFFFFF)
          : const Color(0xCC000000);

  static Color get black90Percent =>
      isDark
          ? const Color(0xE6FFFFFF)
          : const Color(0xE6000000);

  static Color get black50Percent =>
      isDark
          ? const Color(0x80FFFFFF)
          : const Color(0x80000000);

  static Color get black40Percent =>
      isDark
          ? const Color(0x60FFFFFF)
          : const Color(0x60000000);

  static Color get black30Percent =>
      isDark
          ? const Color(0x4DFFFFFF)
          : const Color(0x4D000000);



  /// =========================
  /// BRAND COLORS
  /// =========================

  static const Color orange = Color(0xFFFF9800);

  static Color get orange80Percent =>
      const Color(0xCCFF9800);

  static Color get lightOrange =>
      isDark
          ? const Color(0xFFB2B2B2) // Deep, desaturated amber-brown
          : const Color(0xFFFFC795); // Your original light mode color

  static const Color primaryColor = Color(0xFF008BB2);



  /// =========================
  /// GREY COLORS
  /// =========================

  static Color get grey86 =>
      isDark
          ? const Color(0xFFB0B0B0)
          : const Color(0xFF868889);

  static Color get grey8C =>
      isDark
          ? const Color(0xFFC2C2C2)
          : const Color(0xFF8C8C8C);

  static Color get greyA8 =>
      isDark
          ? const Color(0xFFD0D0D0)
          : const Color(0xFFA8A8A8);

  static Color get greyD9 =>
      isDark
          ? const Color(0xFF3A3A3A)
          : const Color(0xFFD9D9D9);



  /// =========================
  /// SURFACE COLORS
  /// =========================

  static Color get brandColorShade =>
      isDark
          ? const Color(0xFF1E3238)
          : const Color(0xFFD9E8EE);



  /// =========================
  /// STATUS COLORS
  /// =========================

  static const Color errorRed = Color(0xFFD32F2F);
}