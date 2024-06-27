import 'package:booky/features/post/domain/entities/post_entity.dart';
import 'package:booky/features/post/domain/enums/post_file_type.dart';
import 'package:booky/features/post/presentation/screens/post_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../courses/data/bloc/courses_cubit/courses_list_cubit.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostDetailsScreen(note: note),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _postIcon,
              const SizedBox(width: 16.0),
              Text(
                note.title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 18.0),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Icon get _postIcon {
    return const Icon(Icons.text_snippet);
    // switch (post.fileType) {
    //   case PostFileType.note:
    //     return const Icon(Icons.text_snippet);
    //   case PostFileType.pdf:
    //     return const Icon(Icons.picture_as_pdf);
    //   case PostFileType.md:
    //     return const Icon(Icons.abc);
    //   case PostFileType.image:
    //     return const Icon(Icons.image);
    //   case PostFileType.video:
    //     return const Icon(Icons.video_file);
    // }
  }
}
