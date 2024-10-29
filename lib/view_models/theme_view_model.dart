// lib/view_models/theme_view_model.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media/core/constants/app_theme.dart';

class ThemeViewModel extends ChangeNotifier {
  bool _isDarkTheme = false; // Varsayılan olarak aydınlık tema

  bool get isDarkTheme => _isDarkTheme;

  // Tema durumunu başlatır (SharedPreferences'ten okur)
  Future<void> loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
    notifyListeners();
  }

  // Temayı değiştirir ve durumu kaydeder
  Future<void> toggleTheme() async {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkTheme', _isDarkTheme);
  }

  // Geçerli temayı döner
  ThemeData get currentTheme {
    return _isDarkTheme ? AppTheme.darkTheme() : AppTheme.lightTheme();
  }
}
