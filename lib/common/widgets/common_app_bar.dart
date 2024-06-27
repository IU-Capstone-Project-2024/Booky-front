import 'package:flutter/material.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title = 'Booky',
    this.leading,
    this.trailing,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String title;
  final Widget? leading;
  final Widget? trailing;

  @override
  final Size preferredSize;

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
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
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontSize: 24.0,
            ),
      ),
    );
  }
}
