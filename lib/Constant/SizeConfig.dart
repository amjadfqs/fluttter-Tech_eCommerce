import 'package:flutter/material.dart';

class SizeOfConfig {
  // static MediaQueryData? _mediaQueryData;
  static late MediaQueryData _mediaQueryData;

  static late double widthScreen;

  static late double heighScreen;

  static double? defaultSize;
  static Orientation? _orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    widthScreen = _mediaQueryData.size.width;
    heighScreen = _mediaQueryData.size.height;
    _orientation = _mediaQueryData.orientation;
  }
}

// To resize and Widget to fit in any screen
double getWidthScreen(double inputWidth) {
  return (inputWidth / 315.0) * SizeOfConfig.widthScreen;
}

double getHeightScreen(double inputHeight) {
  return (inputHeight / 815.0) * SizeOfConfig.heighScreen;
}
