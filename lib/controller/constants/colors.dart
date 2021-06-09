import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();

  static const Color mainColor = Color(0xFFF57390);
  static const Color secondaryColor = Color(0xFFFDBB46);

  static List<Color> get gradientColorsList {
    return [mainColor, secondaryColor];
  }
}
