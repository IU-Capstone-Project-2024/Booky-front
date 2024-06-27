import 'package:booky/features/post/domain/enums/post_file_type.dart';

class PostEntity {
  const PostEntity({
    required this.title,
    required this.fileType,
  });

  final String title;
  final PostFileType fileType;
}