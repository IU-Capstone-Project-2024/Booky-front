import 'package:flutter/material.dart';

class CommonFloatingActionButton extends StatelessWidget {
  const CommonFloatingActionButton({
    super.key,
    this.onPressed,
    this.icon = Icons.add,
  });

  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
