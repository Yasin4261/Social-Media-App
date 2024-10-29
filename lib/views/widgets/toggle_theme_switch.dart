import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_models/theme_view_model.dart';

class ToggleThemeSwitch extends StatelessWidget {
  const ToggleThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeViewModel = Provider.of<ThemeViewModel>(context);

    return Switch(
        value: themeViewModel.isDarkTheme,
        onChanged: (value) {
          themeViewModel.toggleTheme();
        });
  }
}
