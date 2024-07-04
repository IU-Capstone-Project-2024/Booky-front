import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/confirm_diealog.dart';
import 'package:booky/features/post/data/cubit/files_cubit.dart';
import 'package:booky/features/post/domain/entities/file_entity.dart';
import 'package:booky/features/post/presentation/screens/file_viewer_widgets/image_viewer.dart';
import 'package:booky/features/post/presentation/screens/file_viewer_widgets/md_viewer.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:flutter/material.dart';

class FileViewerRoot extends StatelessWidget {
  const FileViewerRoot({
    super.key,
    required this.file,
    required this.course,
  });

  final File file;
  final Course course;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        appBar: CommonAppBar(
          title: file.filename,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: AppColors.titleColor,
            ),
          ),
          trailing: IconButton(
            onPressed: () async {
              if (await showConfirmDialog(context,
                  text: 'Do you really want to delete this file?')) {
                getIt.get<FilesCubit>().deleteFile(file.id);
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              }
            },
            icon: const Icon(
              Icons.delete_outline,
              color: AppColors.titleColor,
            ),
          ),
        ),
        body: Column(
          children: [
            viewerWidget(),
          ],
        ),
      ),
    );
  }

  Widget viewerWidget() {
    FileType fileType = getFileType(file);

    switch (fileType) {
      case FileType.notStated:
        return const Center(
          child: Text('Error'),
        );
      case FileType.pdf:
        return const Center(
          child: Text('PDF Viewer'),
        );
      case FileType.image:
        return ImageViewer(fileBytes: file.content);
      case FileType.video:
        return const Center(
          child: Text('Video Viewer'),
        );
      case FileType.md:
        return const MdViewer();
      default:
        return const Center(
          child: Text('Error'),
        );
    }
  }
}
