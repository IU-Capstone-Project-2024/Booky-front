import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/features/post/presentation/screens/update_files_screens/update_image_screen.dart';
import 'package:flutter/material.dart';

void openCreateFileBottomsheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const CreateFileBottomsheet(),
  );
}

class CreateFileBottomsheet extends StatelessWidget {
  const CreateFileBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildButton(
          text: 'Image',
          onPressed: () {
            Navigator.of(context)
                .pushRoute(context, const UpdateImageScreen(file: null));
          },
        ),
      ],
    );
  }

  Widget buildButton({
    required void Function() onPressed,
    required String text,
  }) {
    return Container(
      width: double.infinity,
      color: AppColors.mainBackgroundColor,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
