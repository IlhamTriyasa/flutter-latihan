import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double drawerMenuItemfontSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    drawerMenuItemfontSize = screenWidth * 0.04;
  }
}
