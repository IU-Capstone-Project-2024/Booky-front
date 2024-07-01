import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/features/courses/data/bloc/notes_cubit/notes_cubit.dart';
import 'package:booky/features/post/presentation/widgets/note_list_item.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/widgets/dial_floating_action_button.dart';

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
          onPressed: () => _openBottomsheet(context),
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
          trailing: IconButton(
            icon: const Icon(
              Icons.more_vert_rounded,
              color: AppColors.titleColor,
            ),
            onPressed: () {},
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 148,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const FilesList();
                    } else {
                      return PostsList(course: course);
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

  void _openBottomsheet(BuildContext context) {
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
        return _CreateNoteBottomsheet(
          (title, body) {
            getIt.get<NotesCubit>().saveNote(
                  course,
                  Note(body: body, title: title),
                );
          },
        );
      },
    );
  }
}

class _CreateNoteBottomsheet extends StatefulWidget {
  const _CreateNoteBottomsheet(this.saveNote);

  final void Function(String title, String body) saveNote;

  @override
  State<_CreateNoteBottomsheet> createState() => __CreateNoteBottomsheetState();
}

class __CreateNoteBottomsheetState extends State<_CreateNoteBottomsheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 16,
              child: CommonFloatingActionButton(
                icon: const Icon(Icons.done, color: AppColors.white),
                onPressed: () => widget.saveNote(
                  _titleController.text,
                  _bodyController.text,
                ),
              ),
            ),
            Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  style: AppStyles.greyTitle,
                  decoration: const InputDecoration(
                    hintText: 'Post title',
                    border: InputBorder.none,
                    hintStyle: AppStyles.greyTitle,
                  ),
                ),
                SingleChildScrollView(
                  child: TextField(
                    controller: _bodyController,
                    keyboardType: TextInputType.multiline,
                    style: AppStyles.greyDescription,
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

class FilesList extends StatelessWidget {
  const FilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class PostsList extends StatelessWidget {
  final Course course;

  const PostsList({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      bloc: getIt.get<NotesCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () {
            getIt.get<NotesCubit>().fetchNotes(course);
            return const Center(child: CircularProgressIndicator());
          },
          loaded: (notes) {
            if (notes.isEmpty) {
              return const Center(
                  child: Text(
                'No posts yet...',
                style: AppStyles.title2Medium,
              ));
            }
            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: NoteListItem(
                      course: course,
                      note: notes[index],
                    ),
                  ),
                );
              },
            );
          },
          error: () => const Center(child: Text('Error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
