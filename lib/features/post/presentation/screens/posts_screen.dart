import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/features/courses/data/bloc/notes_cubit/notes_cubit.dart';
import 'package:booky/features/courses/screens/create_course_screen.dart';
import 'package:booky/features/post/presentation/screens/files_list.dart';
import 'package:booky/features/post/presentation/screens/posts_list.dart';
import 'package:booky/features/post/presentation/widgets/create_file_bottomsheet.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({
    super.key,
    required this.course,
  });

  final Course course;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            if (controller.page == 0) {
              openCreateFileBottomsheet(context);
            } else {
              _openBottomsheet(context, mode: ViewMode.create);
            }
          },
          icon: const Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
        appBar: CommonAppBar(
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: AppColors.titleColor,
            ),
          ),
          title: course.title,
          trailing: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: DropdownButton(
              underline: const SizedBox(),
              onChanged: (value) {
                if (value == 'edit') {
                  Navigator.of(context).pushRoute(
                    context,
                    CreateCourseScreen(course: course),
                  );
                }
              },
              icon: const Icon(
                Icons.more_vert,
                size: 36,
                color: AppColors.titleColor,
              ),
              items: const [
                DropdownMenuItem(
                  value: 'edit',
                  child: Text('Edit'),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationRow(
                course: course,
                onChanged: (index) {
                  controller.jumpToPage(index);
                },
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return SingleChildScrollView(
                          child: FilesList(course: course));
                    } else {
                      return SingleChildScrollView(
                          child: PostsList(course: course));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openBottomsheet(BuildContext context, {required ViewMode mode}) {
    showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: 0.7,
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      enableDrag: true,
      isDismissible: false,
      backgroundColor: AppColors.mainBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      builder: (context) {
        return CreateNoteBottomsheet(
          (title, body) {
            getIt.get<NotesCubit>().saveNote(
                  course,
                  Note(body: body, title: title),
                );
            Navigator.of(context).pop();
          },
          mode: mode,
        );
      },
    );
  }
}

class CreateNoteBottomsheet extends StatefulWidget {
  const CreateNoteBottomsheet(
    this.saveNote, {
    super.key,
    this.note,
    required this.mode,
    this.course,
  });

  final Note? note;
  final void Function(String title, String body) saveNote;
  final Course? course;

  final ViewMode mode;

  @override
  State<CreateNoteBottomsheet> createState() => _CreateNoteBottomsheetState();
}

class _CreateNoteBottomsheetState extends State<CreateNoteBottomsheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _bodyController.text = widget.note!.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
        child: Stack(
          children: [
            if (widget.mode != ViewMode.read)
              Positioned(
                right: 0,
                bottom: 16,
                child: CommonFloatingActionButton(
                  icon: const Icon(Icons.done, color: AppColors.white),
                  onPressed: () {
                    if (widget.mode == ViewMode.edit) {
                      widget.note!.title = _titleController.text;
                      widget.note!.body = _bodyController.text;
                      getIt
                          .get<NotesCubit>()
                          .updateNote(widget.course!, widget.note!);
                    } else {
                      widget.saveNote(
                        _titleController.text,
                        _bodyController.text,
                      );
                    }
                    // Navigator.of(context).pop();
                  },
                ),
              ),
            Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  enabled: widget.mode != ViewMode.read,
                  style: AppStyles.greyTitle.copyWith(color: AppColors.black),
                  decoration: const InputDecoration(
                    hintText: 'Post title',
                    border: InputBorder.none,
                    hintStyle: AppStyles.greyTitle,
                  ),
                ),
                if (widget.note != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.note!.publisher.name,
                          style: AppStyles.description.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                SingleChildScrollView(
                  child: TextField(
                    controller: _bodyController,
                    keyboardType: TextInputType.multiline,
                    enabled: widget.mode != ViewMode.read,
                    style: AppStyles.greyDescription
                        .copyWith(color: AppColors.black),
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Post text',
                      border: InputBorder.none,
                      hintStyle: AppStyles.greyDescription,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationRow extends StatefulWidget {
  final void Function(int) onChanged;
  final Course course;

  const NavigationRow({
    super.key,
    required this.course,
    required this.onChanged,
  });

  @override
  State<NavigationRow> createState() => _NavigationRowState();
}

class _NavigationRowState extends State<NavigationRow> {
  int _choosenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(
          0,
          'files',
          () {
            _choosenIndex = 0;
            widget.onChanged(0);
            setState(() {});
          },
        ),
        const SizedBox(width: 8),
        _buildButton(
          1,
          'posts',
          () {
            _choosenIndex = 1;
            widget.onChanged(1);
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget _buildButton(
    int index,
    String name,
    void Function() onPressed,
  ) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: index == _choosenIndex
                ? AppStyles.title2Medium
                : AppStyles.title2MediumInactive,
          ),
          Container(
            height: 2,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: index == _choosenIndex
                  ? AppColors.titleColor
                  : AppColors.inactiveTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}

enum ViewMode {
  edit,
  create,
  read;
}
