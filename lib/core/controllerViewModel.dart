import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:library_app/helper/constants.dart';

import 'AppViewModel.dart';

class ControllerViewModel extends GetWidget<AppViewModel> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding = const EdgeInsets.all(12);

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;
  Color selectedColor = primaryColor;
  Color unselectedColor = secondaryColor;
  Color containerColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppViewModel>(
      init: AppViewModel(),
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<AppViewModel>(
      init: Get.find(),
      builder: (controller) {
        int _selectedItemPosition = controller.navigatorIndex;

        return SnakeNavigationBar.color(
          behaviour: snakeBarStyle,
          snakeShape: snakeShape,
          shape: bottomBarShape,
          padding: padding,
          snakeViewColor: selectedColor,
          selectedItemColor:
              snakeShape == SnakeShape.indicator ? selectedColor : null,
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: showUnselectedLabels,
          showSelectedLabels: showSelectedLabels,
          currentIndex: _selectedItemPosition,
          onTap: (index) {
            controller.changeSelectedValue(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'tickets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_download), label: 'calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_rounded), label: 'home'),
          ],
        );
      },
    );
  }
}
