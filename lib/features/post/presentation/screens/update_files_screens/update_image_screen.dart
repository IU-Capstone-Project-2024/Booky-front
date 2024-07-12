import 'dart:typed_data';

import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/common/widgets/confirm_diealog.dart';
import 'package:booky/features/post/data/cubit/files_cubit.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:flutter/material.dart';

class UpdateImageScreen extends StatefulWidget {
  final File? file;

  const UpdateImageScreen({super.key, required this.file});

  @override
  State<UpdateImageScreen> createState() => _UpdateImageScreenState();
}

class _UpdateImageScreenState extends State<UpdateImageScreen> {
  bool confirmedUpload = false;
  File? createdFile;
  String? fileId;
  List<int>? fileBytes;
  List<int>? imageBytes;
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();

    createdFile = null;
  }

  @override
  void dispose() {
    if (!confirmedUpload) {
      if (createdFile != null) {
        getIt.get<FilesCubit>().deleteFile(createdFile!.id);
      }
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.titleColor,
            ),
          ),
          title: 'Upload new image',
        ),
        backgroundColor: AppColors.mainBackgroundColor,
        floatingActionButton: CommonFloatingActionButton(
          icon: const Icon(Icons.done, color: AppColors.white),
          onPressed: createdFile == null
              ? null
              : () async {
                  if (await showConfirmDialog(context, text: 'Are you sure?')) {
                    confirmedUpload = true;
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  }
                },
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    label: Text('Title'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MaterialButton(
                onPressed: () async {
                  createdFile = await getIt
                      .get<FilesCubit>()
                      .uploadImage(_controller.text);
                  setState(() {});
                },
                child: const Text('Choose image'),
              ),
              const SizedBox(height: 16),
              if (createdFile != null && createdFile!.content.isNotEmpty)
                Image.memory(Uint8List.fromList(createdFile!.content))
            ],
          ),
        ),
      ),
    );
  }
}
