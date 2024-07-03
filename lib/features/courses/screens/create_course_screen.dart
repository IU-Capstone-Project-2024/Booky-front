import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/features/courses/data/bloc/courses_cubit/courses_list_cubit.dart';
import 'package:booky/features/courses/screens/courses_screen.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/common_floating_action_button.dart';

class CreateCourseScreen extends StatefulWidget {
  const CreateCourseScreen({
    super.key,
    this.course,
  });

  final Course? course;

  @override
  State<CreateCourseScreen> createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends State<CreateCourseScreen> {
  late final Course course;
  late final TextEditingController titleController;

  @override
  void initState() {
    super.initState();
    course = widget.course ??
        Course(
          title: '',
          description: '',
          semester: Semester.SEMESTER_SUMMER,
          year: 2024,
          tracks: [Track.TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE],
        );
    titleController = TextEditingController()..text = course.title;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            getIt.get<CoursesListCubit>().createCourse(course);
            getIt.get<CoursesListCubit>().fetchCourses();
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.done),
        ),
        appBar: CommonAppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.titleColor,
            ),
          ),
          trailing: widget.course != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    onChanged: (value) {
                      if (value == 'delete') {
                        getIt.get<CoursesListCubit>().deleteCourse(course);
                        getIt.get<CoursesListCubit>().fetchCourses();
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      }
                    },
                    icon: const Icon(
                      Icons.more_vert,
                      size: 36,
                      color: AppColors.titleColor,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'delete',
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          title: course.title.isEmpty ? 'New Course' : course.title,
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
            onChanged: (value) {
              course.title = value;
            },
            controller: titleController,
          ),
        ),
      ),
    );
  }
}
