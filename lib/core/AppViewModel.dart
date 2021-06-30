import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_app/view/screens/downloadsScreen.dart';
import 'package:library_app/view/screens/homeScreen.dart';
import 'package:library_app/view/screens/libraryScreen.dart';

class AppViewModel extends GetxController {
  int _navigatorIndex = 0;
  Widget _currentScreen = HomeScreen();

  get currentScreen => _currentScreen;
  get navigatorIndex => _navigatorIndex;
  void changeSelectedValue(int selectedValue) {
    _navigatorIndex = selectedValue;
    switch (selectedValue) {
      case 0:
        _currentScreen = HomeScreen();
        break;
      case 1:
        _currentScreen = DownloadsScreen();
        break;
      case 2:
        _currentScreen = LibraryScreen();
        break;
    }
    update();
  }
}
