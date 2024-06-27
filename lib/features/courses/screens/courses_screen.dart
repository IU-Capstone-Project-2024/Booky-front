import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/features/courses/screens/create_course_screen.dart';
import 'package:booky/features/courses/widgets/course_list_item.dart';
import 'package:booky/features/courses/widgets/search_field.dart';
import 'package:booky/features/notifications/notifications_screen.dart';
import 'package:booky/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/bloc/courses_cubit/courses_list_cubit.dart';

class CoursesScreen extends StatelessWidget {
  CoursesScreen({super.key});

  final CoursesListCubit cubit = CoursesListCubit();
  final TextEditingController titleController = TextEditingController();

  void titleSubscriber() {
    cubit.fetchCourses(titleController.text);
  }

  @override
  Widget build(BuildContext context) {
    titleController.addListener(titleSubscriber);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CreateCourseScreen(
                  titleController: titleController,
                  cubit: cubit,
                ),
              ),
            );
          },
        ),
        appBar: CommonAppBar(
          title: 'Courses',
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
            icon: const Icon(
              Icons.settings,
              size: 36.0,
            ),
            color: Colors.white,
          ),
          trailing: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const NotificationsScreen()),
              );
            },
            icon: const Icon(
              Icons.notifications,
              size: 36.0,
            ),
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: BlocProvider<CoursesListCubit>(
              create: (context) => cubit..fetchCourses(),
              child: Column(
                children: [
                  SearchField(controller: TextEditingController()),
                  const SizedBox(height: 16.0),
                  BlocBuilder<CoursesListCubit, CoursesListState>(
                    builder: (context, state) {
                      if (state is CoursesListLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (state is CoursesListLoaded) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.courses.length,
                          itemBuilder: (context, index) {
                            return CourseListItem(
                              course: state.courses[index],
                              cubit: cubit,
                            );
                          },
                        );
                      }
                      return Container();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const List<String> dummyCourses = <String>[
  'AGLA',
  'Capstone',
  'Life Safety',
];
