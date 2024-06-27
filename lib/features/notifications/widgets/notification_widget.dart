import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.courseTitle,
    required this.text,
  });

  final String courseTitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(courseTitle, style: Theme.of(context).textTheme.titleSmall),
        Text(text, style: Theme.of(context).textTheme.titleLarge),
        const Divider(),
      ],
    );
  }
}
