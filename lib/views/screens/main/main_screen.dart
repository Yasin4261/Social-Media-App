import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:social_media/view_models/bottom_nav_view_model.dart';
import 'package:social_media/view_models/theme_view_model.dart';

import 'package:social_media/views/widgets/custom_bottom_nav_bar.dart';
import 'package:social_media/views/widgets/icon_theme_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final bottomNav = Provider.of<BottomNavViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
        actions: [
          IconThemeButton(),
        ],
      ),
      body: bottomNav.currentScreen,
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: bottomNav.selectedIndex,
        onItemTapped:
            bottomNav.setIndex, // Provider içindeki setIndex'i çağırır
      ),
    );
  }
}
