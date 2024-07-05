import 'package:flutter/material.dart';

import '../app_colors.dart/app_colors.dart';

class CommonFloatingActionButton extends StatelessWidget {
  const CommonFloatingActionButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.color,
    this.gradientColors,
  });

  final void Function()? onPressed;
  final Icon icon;
  final Color? color;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: FloatingActionButton(
        backgroundColor: color ?? Colors.transparent,
        elevation: 0,
        onPressed: onPressed,
        child: icon,
      ),
    );
  }

  LinearGradient? gradient() {
    if (color != null) {
      return null;
    }
    if (gradientColors != null) {
      return LinearGradient(colors: gradientColors!);
    }
    return const LinearGradient(
      colors: [
        Color(0xff12E12E),
        Color(0xff12E1D4),
      ],
    );
  }
}
