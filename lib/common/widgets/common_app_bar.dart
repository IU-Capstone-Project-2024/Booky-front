import 'package:booky/common/app_styles.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart/app_colors.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.leading,
    this.trailing,
    this.titleWidget,
    this.centerTitle = true,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String? title;
  final Widget? titleWidget;
  final Widget? leading;
  final Widget? trailing;
  final bool? centerTitle;

  @override
  final Size preferredSize;

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      backgroundColor: AppColors.white,
      centerTitle: true,
      leading: widget.leading ??
          IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
      actions: [widget.trailing ?? const SizedBox()],
      title: buildTitle(context),
    );
  }

  Widget buildTitle(BuildContext context) {
    assert(
      widget.title != null ||
          widget.titleWidget != null &&
              !(widget.title != null && widget.titleWidget != null),
      'Только один виджет должен быть заполнен!',
    );
    if (widget.title != null) {
      return Text(
        widget.title!,
        style: AppStyles.toolbarStyle,
      );
    } else {
      return widget.titleWidget!;
    }
  }
}
