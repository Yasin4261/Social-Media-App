// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_models/theme_view_model.dart';
import 'view_models/bottom_nav_view_model.dart';
import 'view_models/post_view_model.dart';

import 'views/screens/home/home_screen.dart';
import 'views/screens/search/search_screen.dart';
import 'views/screens/profile/profile_screen.dart';
import 'views/widgets/custom_bottom_nav_bar.dart';
import 'views/screens/main/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeViewModel()),
        ChangeNotifierProvider(create: (_) => PostViewModel()),
        ChangeNotifierProvider(
            create: (_) => BottomNavViewModel([
                  HomeScreen(),
                  SearchScreen(),
                  ProfileScreen(),
                ])),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeViewModel = Provider.of<ThemeViewModel>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Maker',
      theme: themeViewModel.currentTheme,
      home: MainScreen(),
    );
  }
}
