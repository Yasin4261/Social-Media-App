import 'package:flutter/material.dart';

class BottomNavViewModel extends ChangeNotifier {
  int _selectedIndex = 0;
  final List<Widget> _pages;

  BottomNavViewModel(this._pages);

  int get selectedIndex => _selectedIndex;
  Widget get currentScreen => _pages[_selectedIndex];

  // Yeni bir sekme seçildiğinde indeks değerini günceller
  void setIndex(int index) {
    if (_selectedIndex != index) {
      _selectedIndex = index;
      notifyListeners();
    }
  }
}
