import 'dart:typed_data';

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
        imageProvider: MemoryImage(
          imageBytes,
        ),
      ),
    );
  }
}
