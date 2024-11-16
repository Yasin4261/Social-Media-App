// lib/core/constants/app_theme.dart
import 'package:flutter/material.dart';
import 'color_constants.dart'; // Renklerinizi buradan içe aktarın

class AppTheme {
  // Aydınlık tema
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        background: AppColors.backgroundColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColors.textColor),
        bodyMedium: TextStyle(color: AppColors.textColor),
        // Beğenme metni için stil
        bodySmall: TextStyle(
          color: AppColors.primaryColor, // Beğenme metni rengi
          fontWeight: FontWeight.bold, // Kalın yazı
          fontSize: 16, // Yazı boyutu
        ),
      ),
      iconTheme: IconThemeData(
        color: AppColors.primaryColor, // İkon rengi
        size: 24, // İkon boyutu
      ),
      // İkon butonlar için stil
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
              AppColors.primaryColor), // İkon butonlarının rengi
          overlayColor: MaterialStateProperty.all(AppColors.secondaryColor
              .withOpacity(0.1)), // Üzerine gelindiğinde renk
        ),
      ),
      // Diğer stiller burada tanımlanabilir
    );
  }

  // Karanlık tema
  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        background: Colors.black,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        // Beğenme metni için stil
        bodySmall: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
        size: 24,
      ),
      // İkon butonlar için stil
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(AppColors.primaryColor),
          overlayColor: MaterialStateProperty.all(
              AppColors.secondaryColor.withOpacity(0.1)),
        ),
      ),
      // Diğer stiller burada tanımlanabilir
    );
  }
}
