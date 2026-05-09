import 'package:flutter/material.dart';

import '../assets_gen/fonts.gen.dart';

class AppTheme {

  /// LIGHT THEME
  static ThemeData lightTheme = ThemeData(

    brightness: Brightness.light,

    fontFamily: FontFamily.openSans,

    scaffoldBackgroundColor: Colors.white,

    primaryColor: const Color(0xFF0066FF),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),

    cardColor: Colors.white,

    dividerColor: Color(0xFFE0E0E0),

    textTheme: const TextTheme(

      bodyLarge: TextStyle(
        color: Colors.black,
      ),

      bodyMedium: TextStyle(
        color: Colors.black,
      ),

      bodySmall: TextStyle(
        color: Colors.black54,
      ),
    ),

    colorScheme: ColorScheme.light(
      primary: Color(0xFF0066FF),
      secondary: Color(0xFF0066FF),
    ),
  );



  /// DARK THEME
  static ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,

    fontFamily: FontFamily.openSans,

    scaffoldBackgroundColor: const Color(0xFF121212),

    primaryColor: const Color(0xFF0066FF),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF121212),
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    cardColor: const Color(0xFF1E1E1E),

    dividerColor: Color(0xFF2C2C2C),

    textTheme: const TextTheme(

      bodyLarge: TextStyle(
        color: Colors.white,
      ),

      bodyMedium: TextStyle(
        color: Colors.white,
      ),

      bodySmall: TextStyle(
        color: Colors.white70,
      ),
    ),

    colorScheme: ColorScheme.dark(
      primary: Color(0xFF0066FF),
      secondary: Color(0xFF0066FF),
    ),
  );
}