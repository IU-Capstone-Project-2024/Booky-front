import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(BuildContext context, {required String text}) async {
  final bool? res = await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(text),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Continue'),
        ),
      ],
    ),
  ).then((value) => value ?? false);

  return res ?? false;
}