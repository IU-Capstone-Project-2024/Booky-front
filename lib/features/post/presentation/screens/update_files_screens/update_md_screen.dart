import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/common/widgets/confirm_diealog.dart';
import 'package:booky/features/post/data/cubit/files_cubit.dart';
import 'package:booky/features/post/presentation/screens/posts_screen.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class UpdateMdScreen extends StatefulWidget {
  final File? file;
  final ViewMode mode;

  const UpdateMdScreen({super.key, this.file, required this.mode});

  @override
  State<UpdateMdScreen> createState() => _UpdateMdScreenState();
}

class _UpdateMdScreenState extends State<UpdateMdScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final TextEditingController _editingController;
  late final ValueNotifier<String> _mdTextNotifier;
  late final TextEditingController _titleController;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController();
    _editingController = TextEditingController()
      ..addListener(_mdEditingListener);
    _tabController = TabController(length: 2, vsync: this);

    _mdTextNotifier = ValueNotifier(_editingController.text);
  }

  void _mdEditingListener() {
    _mdTextNotifier.value = _editingController.text;
  }

  @override
  void dispose() {
    _tabController.dispose();

    _editingController.removeListener(_mdEditingListener);
    _editingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: widget.mode == ViewMode.read
            ? null
            : CommonFloatingActionButton(
                icon: const Icon(
                  Icons.save,
                  color: AppColors.white,
                ),
                onPressed: () async {
                  if (await showConfirmDialog(context,
                      text: 'Have you finished editing?')) {
                    if (widget.mode == ViewMode.create) {
                      getIt.get<FilesCubit>().uploadMd(
                            md: _editingController.text,
                            title: _titleController.text,
                          );
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    }
                  }
                },
              ),
        appBar: AppBar(
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          backgroundColor: AppColors.white,
          title: const Text('Markdown Editor'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(child: Text('Editor')),
              Tab(child: Text('Preview'))
            ],
          ),
        ),
        backgroundColor: AppColors.mainBackgroundColor,
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    style: AppStyles.title2Medium.copyWith(
                      color: AppColors.black,
                      fontSize: 22,
                    ),
                    decoration: InputDecoration(
                      labelText: 'File Name',
                      labelStyle: AppStyles.toolbarStyle.copyWith(fontSize: 16),
                      border: InputBorder.none,
                    ),
                  ),
                  // const SizedBox(height: 16.0),
                  TextField(
                    controller: _editingController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: AppStyles.title2Medium.copyWith(
                      color: AppColors.black,
                      fontSize: 18,
                    ),
                    cursorColor: AppColors.titleColor,
                    decoration: InputDecoration(
                      labelText: 'Markdown Text',
                      labelStyle: AppStyles.toolbarStyle.copyWith(fontSize: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ValueListenableBuilder(
                valueListenable: _mdTextNotifier,
                builder: (context, mdText, _) => MarkdownBody(
                  data: mdText,
                  styleSheet: MarkdownStyleSheet(
                      textScaler: const TextScaler.linear(1.3)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
