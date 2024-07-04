import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, required this.fileBytes});

  final List<int> fileBytes;

  @override
  Widget build(BuildContext context) {
    Uint8List imageBytes = Uint8List.fromList(fileBytes);

    return Image.memory(imageBytes);
  }
}
