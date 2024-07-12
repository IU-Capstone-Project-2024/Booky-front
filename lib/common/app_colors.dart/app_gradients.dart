import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppGradients {
  static const floatingActionButtonGradient = LinearGradient(
    colors: [
      Color(0xff12E12E),
      Color(0xff12E1D4),
    ],
  );

  static final darkGreenVerticalGradient = LinearGradient(
    colors: [
      AppColors.white.withOpacity(0.2),
      AppColors.darkGreenColor,
    ],
    stops: const [
      0.0,
      0.6,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
