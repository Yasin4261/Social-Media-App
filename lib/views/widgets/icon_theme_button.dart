// lib/widgets/theme_toggle_button.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:social_media/view_models/theme_view_model.dart';

class IconThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeViewModel = Provider.of<ThemeViewModel>(context);

    return IconButton(
      icon: Icon(
        themeViewModel.isDarkTheme ? Icons.wb_sunny : Icons.nightlight_round,
      ),
      onPressed: () {
        themeViewModel.toggleTheme();
      },
    );
  }
}
