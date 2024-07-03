import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/confirm_diealog.dart';
import 'package:booky/features/courses/data/bloc/courses_cubit/courses_list_cubit.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/widgets/common_floating_action_button.dart';

class CreateCourseScreen extends StatefulWidget {
  const CreateCourseScreen({
    super.key,
    this.course,
  });

  final Course? course;

  @override
  State<CreateCourseScreen> createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends State<CreateCourseScreen> {
  late final Course course;

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _yearController = TextEditingController();

  @override
  void initState() {
    super.initState();
    course = widget.course ??
        Course(
          title: '',
          description: '',
          semester: Semester.SEMESTER_SUMMER,
          year: 2024,
          tracks: [],
        );

    _titleController.text = course.title;
    _descriptionController.text = course.description;
    _yearController.text = course.year.toString();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _yearController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        floatingActionButton: CommonFloatingActionButton(
          onPressed: () {
            if (course.tracks.isEmpty) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Please choose at least one track'),
                  actions: [
                    TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              );
            } else {
              if (widget.course == null) {
                getIt.get<CoursesListCubit>().createCourse(course);
              } else {
                getIt.get<CoursesListCubit>().updateCourse(course);
              }
              Navigator.of(context).pop();
            }
          },
          icon: const Icon(Icons.done),
        ),
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
          trailing: widget.course != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    onChanged: (value) async {
                      if (value == 'delete') {
                        if (await showConfirmDialog(context,
                            text:
                                'Are you sure you want to delete this course?')) {
                          getIt.get<CoursesListCubit>().deleteCourse(course);
                          if (context.mounted) {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          }
                        }
                      }
                    },
                    icon: const Icon(
                      Icons.more_vert,
                      size: 36,
                      color: AppColors.titleColor,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'delete',
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          title: course.title.isEmpty ? 'New Course' : course.title,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                    ),
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Course title',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  course.title = value;
                },
              ),
              const SizedBox(height: 16),
              TextField(
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                    ),
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Course description',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  course.description = value;
                },
              ),
              const SizedBox(height: 16),
              TextField(
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                    ),
                decoration: const InputDecoration(
                  labelText: 'Year',
                  border: OutlineInputBorder(),
                ),
                controller: _yearController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  course.year = int.parse(value);
                },
              ),
              const SizedBox(height: 16),
              buildTracks(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTracks() {
    List<Widget> widgets = [];
    for (Track track in Track.values) {
      if (track == Track.TRACK_UNKNOWN) {
        continue;
      }
      widgets.add(_TrackChooseWidget(
        _Track(choosen: course.tracks.contains(track), track: track),
        onTap: (choosen) {
          if (choosen) {
            course.tracks.add(track);
          } else {
            course.tracks.removeWhere((element) => element.name == track.name);
          }
        },
      ));
    }
    return Row(
      children: widgets,
    );
  }
}

class _TrackChooseWidget extends StatefulWidget {
  final _Track track;
  final void Function(bool) onTap;

  const _TrackChooseWidget(this.track, {required this.onTap});

  @override
  State<_TrackChooseWidget> createState() => __TrackChooseWidgetState();
}

class __TrackChooseWidgetState extends State<_TrackChooseWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          widget.track.choosen = !widget.track.choosen;
          widget.onTap(widget.track.choosen);
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.track.choosen
                ? AppColors.titleColor
                : AppColors.inactiveTitleColor,
          ),
          child: Text(trackToString(widget.track.track)),
        ),
      ),
    );
  }
}

class _Track {
  _Track({required this.choosen, required this.track});
  bool choosen;
  Track track;
}
