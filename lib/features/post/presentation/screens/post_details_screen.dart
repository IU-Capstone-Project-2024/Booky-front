import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../courses/data/bloc/courses_cubit/courses_list_cubit.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          title: note.title,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Text(
              note.body,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
