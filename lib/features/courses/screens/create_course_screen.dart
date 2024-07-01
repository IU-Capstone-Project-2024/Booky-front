import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/common_floating_action_button.dart';

class CreateCourseScreen extends StatelessWidget {
  const CreateCourseScreen({
    super.key,
    required this.titleController,
  });

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.done),
        ),
        appBar: const CommonAppBar(
          title: 'New course',
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
            decoration: const InputDecoration(
              hintText: 'Course title',
              border: OutlineInputBorder(),
            ),
            controller: titleController,
          ),
        ),
      ),
    );
  }
}
