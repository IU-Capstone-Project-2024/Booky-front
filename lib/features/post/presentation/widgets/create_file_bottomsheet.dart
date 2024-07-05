import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/features/post/presentation/screens/posts_screen.dart';
import 'package:booky/features/post/presentation/screens/update_files_screens/update_image_screen.dart';
import 'package:booky/features/post/presentation/screens/update_files_screens/update_md_screen.dart';
import 'package:flutter/material.dart';

void openCreateFileBottomsheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    enableDrag: true,
    isDismissible: true,
    scrollControlDisabledMaxHeightRatio: 0.3,
    backgroundColor: AppColors.mainBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(28),
        topRight: Radius.circular(28),
      ),
    ),
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
          context,
          text: 'Image',
          onPressed: () {
            Navigator.of(context)
                .pushRoute(context, const UpdateImageScreen(file: null));
          },
          icon: Icons.image_outlined,
        ),
        buildButton(
          context,
          text: 'Markdown',
          onPressed: () {
            Navigator.of(context).pushRoute(
                context, const UpdateMdScreen(mode: ViewMode.create));
          },
          icon: Icons.insert_drive_file_outlined,
        ),
      ],
    );
  }

  Widget buildButton(
    BuildContext context, {
    required void Function() onPressed,
    required String text,
    required IconData icon,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      color: AppColors.mainBackgroundColor,
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: AppStyles.title1),
            const SizedBox(width: 16.0),
            Icon(
              icon,
              color: AppColors.darkTitleColor,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
