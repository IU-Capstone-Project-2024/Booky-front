import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static final TextStyle toolbarStyle = GoogleFonts.montserratAlternates(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.titleColor,
  );

  static final TextStyle title1 = GoogleFonts.montserratAlternates(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.darkTitleColor,
  );

  static final TextStyle description = GoogleFonts.capriola(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.descriptionColor,
  );

  static final TextStyle title2Medium = GoogleFonts.montserratAlternates(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: AppColors.titleColor,
  );

  static final TextStyle title2MediumInactive = GoogleFonts.montserratAlternates(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.inactiveTitleColor,
  );

  static final TextStyle greyTitle = GoogleFonts.capriola(
    fontSize: 24,
    color: AppColors.editableText,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle greyDescription = GoogleFonts.capriola(
    fontSize: 16,
    color: AppColors.editableText,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle settingsTitle = GoogleFonts.capriola(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle content = GoogleFonts.montserrat(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );
}
