import 'dart:typed_data';

import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, required this.fileBytes});

  final List<int> fileBytes;

  @override
  Widget build(BuildContext context) {
    Uint8List imageBytes = Uint8List.fromList(fileBytes);

    return Expanded(
      child: PhotoView(
        backgroundDecoration: const BoxDecoration(color: AppColors.white),
        imageProvider: MemoryImage(
          imageBytes,
        ),
      ),
    );
  }
}
