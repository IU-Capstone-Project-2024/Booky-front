import 'package:flutter/material.dart';

import '../app_colors.dart/app_colors.dart';

class CommonFloatingActionButton extends StatelessWidget {
  const CommonFloatingActionButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.color = AppColors.inactiveTitleColor,
  });

  final void Function()? onPressed;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: color,
      onPressed: onPressed,
      child: icon,
    );
  }
}
