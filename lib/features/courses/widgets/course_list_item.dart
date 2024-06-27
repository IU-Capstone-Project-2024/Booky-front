import 'package:booky/features/courses/data/bloc/courses_cubit/courses_list_cubit.dart';
import 'package:booky/features/post/presentation/screens/posts_screen.dart';
import 'package:flutter/material.dart';

class CourseListItem extends StatelessWidget {
  const CourseListItem({super.key, required this.course, required this.cubit});

  final Course course;
  final CoursesListCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostsScreen(course: course, cubit: cubit),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                course.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Icon(Icons.arrow_right),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
