import 'package:booky/common/utils.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MdViewer extends StatelessWidget {
  final File file;

  const MdViewer({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MarkdownBody(
        data: BookyFilesConverter.bytesToString(file.content),
        styleSheet: MarkdownStyleSheet(
          textScaler: const TextScaler.linear(1.3),
        ),
      ),
    );
  }
}
