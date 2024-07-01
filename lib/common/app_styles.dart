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

  static const TextStyle title2Medium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: AppColors.titleColor,
  );

  static const TextStyle title2MediumInactive = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.inactiveTitleColor,
  );

  static const TextStyle greyTitle = TextStyle(
    fontSize: 24,
    color: AppColors.editableText,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle greyDescription = TextStyle(
    fontSize: 16,
    color: AppColors.editableText,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle settingsTitle = TextStyle(
    fontSize: 22,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
}
