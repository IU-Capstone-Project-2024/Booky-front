import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';

class NoteListItem extends StatelessWidget {
  final Note note;
  final Course course;

  const NoteListItem({
    super.key,
    required this.note,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      height: 88,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.comment_outlined,
                color: AppColors.darkTitleColor,
                size: 40,
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title,
                    style: AppStyles.title1,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        note.publisher.name,
                        style: AppStyles.description,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // const Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Text(
          //       'updated 01/01/2024 12:35',
          //       style: AppStyles.description,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
