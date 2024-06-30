import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/features/post/presentation/screens/posts_screen.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class CourseListItem extends StatelessWidget {
  const CourseListItem({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostsScreen(course: course),
          ),
        );
      },
      child: Container(
        height: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SvgIcon(
                    icon: SvgIconData('assets/course_icon.svg'),
                    color: AppColors.darkTitleColor,
                    size: 40,
                  ),
                  const SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: AppStyles.title1,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _tracsToString(course.tracks),
                        style: AppStyles.description,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _tracsToString(List<Track>? tracks) {
    if (tracks == null || tracks.isEmpty) {
      return '';
    }
    String result = '';
    for (final Track track in tracks) {
      result = '${trackToString(track)} $result';
    }
    return result;
  }
}
