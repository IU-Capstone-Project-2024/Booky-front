import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/features/courses/data/bloc/notes_cubit/notes_cubit.dart';
import 'package:booky/features/post/presentation/screens/posts_screen.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

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

  String prevText = '';

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _bodyController.text = widget.note!.body;
    }
  }

  void vodyListener() {
    prevText = _bodyController.text;
  }

  void resetSuggestedText() {
    _bodyController.text = prevText;
  }

  void setSuggestedText(String text) {
    _bodyController.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
      child: Stack(
        children: [
          if (widget.mode != ViewMode.read) navigationButtons,
          Column(
            children: [
              TextFormField(
                controller: _titleController,
                enabled: widget.mode != ViewMode.read,
                style: AppStyles.greyTitle.copyWith(color: AppColors.black),
                decoration: InputDecoration(
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
              SizedBox(
                height: 300, // Set the height you need
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: TextField(
                    controller: _bodyController,
                    keyboardType: TextInputType.multiline,
                    enabled: widget.mode != ViewMode.read,
                    style: AppStyles.greyDescription
                        .copyWith(color: AppColors.black),
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Post text',
                      border: InputBorder.none,
                      hintStyle: AppStyles.greyDescription,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget get navigationButtons => Positioned(
        right: 0,
        bottom: 16,
        child: Column(
          children: [
            IconButton(
              icon: SvgIcon(
                icon: const SvgIconData('assets/beauty.svg'),
                size: 35,
                color: AppColors.titleColor,
              ),
              onPressed: () async {
                _bodyController.text = await getIt
                    .get<NotesCubit>()
                    .getAIUpdatedText(_bodyController.text);
              },
            ),
            CommonFloatingActionButton(
              icon: const Icon(Icons.done, color: AppColors.white),
              onPressed: () {
                if (_titleController.text.isEmpty ||
                    _bodyController.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Error'),
                        content: const Text('All fields are required'),
                        actions: [
                          TextButton(
                            onPressed: Navigator.of(context).pop,
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                  return;
                }
                if (widget.mode == ViewMode.edit) {
                  widget.note!.title = _titleController.text;
                  widget.note!.body = _bodyController.text;
                  getIt
                      .get<NotesCubit>()
                      .updateNote(widget.course!, widget.note!);
                  Navigator.of(context).pop();
                } else {
                  widget.saveNote(
                    _titleController.text,
                    _bodyController.text,
                  );
                }
              },
            ),
          ],
        ),
      );
}
