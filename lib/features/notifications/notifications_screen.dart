import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/features/notifications/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppBar(title: 'Notifications'),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (final String key in dummyNotifications.keys)
                  NotificationWidget(
                    courseTitle: key,
                    text: dummyNotifications[key]!,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const Map<String, String> dummyNotifications = {
  'AGLA': "New post 'midterm cheatsheet'",
  'Life Safety': "New post 'course cheatsheet'",
};
