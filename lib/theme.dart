import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/colors.dart';

/// App themes
class AppThemes {
  /// Dark Theme
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.seedColor,
    ),
    brightness: Brightness.dark,
    useMaterial3: true,
  );

  /// Dark Theme
  static final lightTheme = ThemeData.light();
}
