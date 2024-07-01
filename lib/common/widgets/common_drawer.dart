import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/features/courses/screens/courses_screen.dart';
import 'package:booky/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

Widget buildDrawer(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      width: MediaQuery.of(context).size.width * 0.9,
      backgroundColor: AppColors.mainBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(height: 64),
            ListTile(
              leading: const SvgIcon(
                icon: SvgIconData('assets/home.svg'),
                size: 35,
                color: AppColors.titleColor,
              ),
              title: const Text(
                'Home',
                style: AppStyles.toolbarStyle,
              ),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const CoursesScreen(),
                    transitionDuration: Duration.zero,
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
            ),
            ListTile(
              leading: const SvgIcon(
                icon: SvgIconData('assets/settings.svg'),
                size: 35,
                color: AppColors.titleColor,
              ),
              title: const Text(
                'Settings',
                style: AppStyles.toolbarStyle,
              ),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const SettingsScreen(),
                    transitionDuration: Duration.zero,
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }