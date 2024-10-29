// lib/core/constants/app_theme.dart
import 'package:flutter/material.dart';
import 'color_constants.dart'; // Renklerinizi buradan içe aktarın

class AppTheme {
  // Aydınlık tema
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        background: AppColors.backgroundColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: AppColors.textColor),
      ),
      // Diğer stiller burada tanımlanabilir
    );
  }

  // Karanlık tema
  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        background: Colors.black,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
      ),
      // Diğer stiller burada tanımlanabilir
    );
  }
}
