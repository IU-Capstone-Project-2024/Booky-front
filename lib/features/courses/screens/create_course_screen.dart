import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/features/courses/data/bloc/courses_cubit/courses_list_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/common_floating_action_button.dart';

class CreateCourseScreen extends StatelessWidget {
  const CreateCourseScreen({
    super.key,
    required this.titleController,
    required this.cubit,
  });

  final TextEditingController titleController;
  final CoursesListCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            cubit.addCourse(Course(
              title: titleController.text,
              notes: [],
              id: '',
            ));
            Navigator.of(context).pop();
          },
          icon: Icons.done,
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
