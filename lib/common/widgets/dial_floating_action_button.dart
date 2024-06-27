import 'package:booky/features/post/presentation/screens/post_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../features/courses/data/bloc/courses_cubit/courses_list_cubit.dart';
import '../../features/post/presentation/screens/create_post_screen.dart';

class DialFloatingActionButton extends StatelessWidget {
  DialFloatingActionButton({
    super.key,
    this.icon = Icons.add,
    required this.cubit,
    required this.course,
  });

  final IconData icon;
  final CoursesListCubit cubit;
  Course course;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.add,
      overlayColor: const Color.fromARGB(255, 119, 131, 119),
      activeIcon: Icons.arrow_back_ios_new,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      children: [
        SpeedDialChild(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: const Icon(Icons.upload_file_rounded),
          labelWidget: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: labelWidget(context, 'create post'),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CreatePostScreen(
                  titleController: TextEditingController(),
                  bodyController: TextEditingController(),
                  cubit: cubit,
                  course: course,
                ),
              ),
            );
          },
        ),
        SpeedDialChild(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: const Icon(Icons.edit_document),
          labelWidget: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: labelWidget(context, 'upload file'),
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget labelWidget(BuildContext context, String label) => SizedBox(
        width: 108.0,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          elevation: 6,
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Center(child: Text(label)),
          ),
        ),
      );
}
