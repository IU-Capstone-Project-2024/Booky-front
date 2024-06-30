import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/features/courses/widgets/search_field.dart';
import 'package:booky/features/post/domain/entities/post_entity.dart';
import 'package:booky/features/post/domain/enums/post_file_type.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/widgets/dial_floating_action_button.dart';
import '../../../courses/data/bloc/courses_cubit/courses_list_cubit.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: DialFloatingActionButton(
          course: course,
        ),
        appBar: CommonAppBar(
          title: course.title,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(controller: TextEditingController()),
                const SizedBox(height: 16.0),
                BlocBuilder(
                  bloc: getIt.get<CoursesListCubit>(),
                  builder: (context, state) {
                    // if (state is CoursesListLoaded) {
                    //   // TODO: build courses here
                    // }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const List<PostEntity> dummyPosts = [
  PostEntity(title: 'midterm cheatsheet', fileType: PostFileType.note),
  PostEntity(title: 'course cheatsheet', fileType: PostFileType.note),
];
