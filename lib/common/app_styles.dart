import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle toolbarStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.titleColor,
  );

  static const TextStyle title1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.darkTitleColor,
  );

  static const TextStyle description = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.descriptionColor,
  );
}