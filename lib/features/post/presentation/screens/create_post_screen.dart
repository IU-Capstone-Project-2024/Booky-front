import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/features/courses/data/bloc/courses_cubit/courses_list_cubit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/max_lines.dart';
import '../../../../common/widgets/common_floating_action_button.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({
    super.key,
    required this.titleController,
    required this.bodyController,
    required this.course,
  });

  final TextEditingController titleController;
  final TextEditingController bodyController;
  final Course course;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icons.done,
        ),
        appBar: const CommonAppBar(
          title: 'New post',
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 24.0,
                    ),
                decoration: const InputDecoration(
                  hintText: 'Enter title',
                  border: InputBorder.none,
                ),
                controller: titleController,
              ),
              const Divider(),
              TextFormField(
                maxLines: maxLines,
                keyboardType: TextInputType.multiline,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                    ),
                decoration: const InputDecoration(
                  hintText: 'Enter post',
                  border: InputBorder.none,
                ),
                controller: bodyController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
