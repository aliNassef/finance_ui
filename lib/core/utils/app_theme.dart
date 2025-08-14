import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class AppTheme {
  getLightTheme() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: AppFonts.mainFontName,
      brightness: Brightness.light,
    );
  }
}
