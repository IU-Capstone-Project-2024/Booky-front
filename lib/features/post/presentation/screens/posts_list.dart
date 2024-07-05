import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/widgets/confirm_diealog.dart';
import 'package:booky/features/courses/data/bloc/notes_cubit/notes_cubit.dart';
import 'package:booky/features/post/presentation/screens/posts_screen.dart';
import 'package:booky/features/post/presentation/widgets/note_list_item.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsList extends StatefulWidget {
  final Course course;

  const PostsList({super.key, required this.course});

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  Offset _tapPosition = Offset.zero;

  late RenderBox overlay;

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      bloc: getIt.get<NotesCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () {
            getIt.get<NotesCubit>().fetchNotes(widget.course);
            return const Center(child: CircularProgressIndicator());
          },
          loaded: (notes) {
            if (notes.isEmpty) {
              return const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Center(
                  child: Text(
                    'No posts yet...',
                    style: AppStyles.title2Medium,
                  ),
                ),
              );
            }
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                      child: GestureDetector(
                        onTapDown: _storePosition,
                        child: ListTile(
                          onLongPress: () {
                            _showMenu(
                              context,
                              RelativeRect.fromLTRB(
                                _tapPosition.dx,
                                _tapPosition.dy,
                                MediaQuery.of(context).size.width -
                                    _tapPosition.dx,
                                MediaQuery.of(context).size.height -
                                    _tapPosition.dy,
                              ),
                              notes[index],
                              widget.course,
                            );
                          },
                          onTap: () {
                            _openEditNoteBottomsheet(
                                context, notes[index], ViewMode.read);
                          },
                          title: NoteListItem(
                            course: widget.course,
                            note: notes[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
          error: () => const Center(child: Text('Error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  void _showMenu(BuildContext context, RelativeRect position, Note note,
          Course course) =>
      showMenu(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: AppColors.dialogBackgroundColor,
        context: context,
        position: position,
        items: [
          PopupMenuItem<int>(
            value: 0,
            child: Row(
              children: [
                const Icon(
                  Icons.report_gmailerrorred,
                  color: AppColors.darkTitleColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Complain',
                  style: AppStyles.greyTitle.copyWith(
                    fontSize: 12,
                    color: AppColors.darkTitleColor,
                  ),
                ),
              ],
            ),
          ),
          PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                const Icon(
                  Icons.edit,
                  color: AppColors.darkTitleColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Edit',
                  style: AppStyles.greyTitle.copyWith(
                    fontSize: 12,
                    color: AppColors.darkTitleColor,
                  ),
                ),
              ],
            ),
            onTap: () {
              _openEditNoteBottomsheet(
                  context, note, ViewMode.edit, widget.course);
            },
          ),
          PopupMenuItem<int>(
            value: 2,
            onTap: () async {
              if (await showConfirmDialog(context,
                  text: 'Are you sure you want to delete this note?')) {
                getIt.get<NotesCubit>().deleteNote(widget.course, note);
              }
            },
            child: Row(
              children: [
                const Icon(
                  Icons.delete,
                  color: AppColors.darkTitleColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Delete',
                  style: AppStyles.greyTitle.copyWith(
                    fontSize: 12,
                    color: AppColors.darkTitleColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ).then((value) {
        if (value != null) {
          if (value == 0) {
          } else if (value == 1) {
          } else if (value == 2) {}
        }
      });

  void _openEditNoteBottomsheet(
    BuildContext context,
    Note note,
    ViewMode mode, [
    Course? course,
  ]) {
    showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: 0.9,
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
            if (title != note.title || body != note.body) {
              getIt.get<NotesCubit>().updateNote(
                    widget.course,
                    Note(body: body, title: title),
                  );
            }
          },
          mode: mode,
          note: note,
          course: course,
        );
      },
    );
  }
}
