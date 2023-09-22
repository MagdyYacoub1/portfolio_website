import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/styles/colors.dart';

/// App themes
class AppThemes {
  /// Dark Theme
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.seedColor,
      background: AppColors.bgColor,
    ),
    brightness: Brightness.dark,
    useMaterial3: true,
    textTheme: GoogleFonts.archivoBlackTextTheme(),
  );

  /// Dark Theme
  static final lightTheme = ThemeData.light();
}
