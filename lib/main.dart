import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:library_app/helper/binding.dart';
import 'package:library_app/view/screens/homeScreen.dart';
import 'package:library_app/view/screens/onBoardingScreen.dart';

import 'helper/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      builder: () => GetMaterialApp(
        initialBinding: Binding(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffolodColor,
        ),
        home: OnBoardingScreen(),
      ),
    );
  }
}
