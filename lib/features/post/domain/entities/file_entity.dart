import 'package:booky/proto/generated/booky.pb.dart';

class FileEntity {
  FileEntity({
    required this.file,
    required this.type,
  });

  File file;
  FileType type;
}

enum FileType {
  image,
  md,
  video,
  pdf,
  notStated,
}
