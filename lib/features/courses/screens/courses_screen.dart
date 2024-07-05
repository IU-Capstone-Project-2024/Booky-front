import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/common_drawer.dart';
import 'package:booky/common/widgets/common_floating_action_button.dart';
import 'package:booky/features/courses/screens/create_course_screen.dart';
import 'package:booky/features/courses/widgets/course_list_item.dart';
import 'package:booky/proto/generated/booky.pbenum.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../getit.dart';
import '../data/bloc/courses_cubit/courses_list_cubit.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  late final TextEditingController titleController;
  void titleSubscriber() {
    // search courses with 1.5 sec delay
    EasyDebounce.debounce(
      'titleSubscriber',
      const Duration(milliseconds: 1000),
      () {
        getIt.get<CoursesListCubit>().fetchCourses(titleController.text);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController()..addListener(titleSubscriber);
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<CoursesListCubit>.value(
        value: getIt.get<CoursesListCubit>(),
        child: Scaffold(
          backgroundColor: AppColors.mainBackgroundColor,
          drawer: buildDrawer(context),
          floatingActionButton: CommonFloatingActionButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .pushRoute(context, const CreateCourseScreen());
            },
          ),
          appBar: CommonAppBar(
            centerTitle: false,
            titleWidget: Row(
              children: [
                _TitleWidget(
                  getIt.get<CoursesListCubit>().semester,
                  onChanged: (Semester semester) {
                    getIt.get<CoursesListCubit>().setSemester(semester);
                  },
                ),
              ],
            ),
            leading: Builder(builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                color: AppColors.titleColor,
              );
            }),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  getIt.get<CoursesListCubit>().showSearchingField =
                      !getIt.get<CoursesListCubit>().showSearchingField;
                  if (!getIt.get<CoursesListCubit>().showSearchingField) {
                    titleController.clear();
                  }
                });
              },
              icon: const Icon(
                Icons.search,
                size: 36.0,
                color: AppColors.titleColor,
              ),
              color: Colors.white,
            ),
          ),
          body: Column(
            children: [
              _YearChooseWidget(
                getIt.get<CoursesListCubit>().year,
                onChanged: (int year) {
                  getIt.get<CoursesListCubit>().setYear(year);
                },
              ),
              if (getIt.get<CoursesListCubit>().showSearchingField)
                _searchingField(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: BlocBuilder<CoursesListCubit, CoursesListState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () {
                          getIt.get<CoursesListCubit>().fetchCourses();
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        loaded: (courses) {
                          return SingleChildScrollView(
                            child: Column(
                              children: courses
                                  .map((e) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16.0),
                                        child: CourseListItem(
                                          course: e,
                                        ),
                                      ))
                                  .toList(),
                            ),
                          );
                        },
                        error: () => const Text('Error'),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchingField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: TextFormField(
        controller: titleController,
        cursorColor: AppColors.titleColor,
        decoration: const InputDecoration(
          hoverColor: AppColors.titleColor,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.titleColor),
          ),
          focusColor: AppColors.titleColor,
        ),
      ),
    );
  }
}

class _TitleWidget extends StatefulWidget {
  const _TitleWidget(this.initial, {required this.onChanged});

  final void Function(Semester semester) onChanged;

  final Semester initial;

  @override
  State<_TitleWidget> createState() => __TitleWidgetState();
}

class __TitleWidgetState extends State<_TitleWidget> {
  late Semester _semester;

  @override
  void initState() {
    super.initState();
    _semester = widget.initial;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Semester>(
      underline: const SizedBox(),
      dropdownColor: Colors.white,
      style: AppStyles.toolbarStyle,
      iconEnabledColor: AppColors.titleColor,
      iconDisabledColor: AppColors.titleColor,
      value: _semester,
      items: const [
        DropdownMenuItem(
          value: Semester.SEMESTER_SUMMER,
          child: Text('Summer'),
        ),
        DropdownMenuItem(
          value: Semester.SEMESTER_FALL,
          child: Text('Fall'),
        ),
        DropdownMenuItem(
          value: Semester.SEMESTER_SPRING,
          child: Text('Spring'),
        ),
      ],
      onChanged: (value) {
        setState(() {
          _semester = value!;
        });
        widget.onChanged(_semester);
        getIt.get<CoursesListCubit>().fetchCourses();
      },
    );
  }
}

class _YearChooseWidget extends StatefulWidget {
  const _YearChooseWidget(this.initYear, {required this.onChanged});

  final int initYear;
  final void Function(int year) onChanged;

  @override
  State<_YearChooseWidget> createState() => __YearChooseWidgetState();
}

class __YearChooseWidgetState extends State<_YearChooseWidget> {
  late int _year;

  @override
  void initState() {
    super.initState();
    _year = widget.initYear;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              --_year;
              widget.onChanged(_year);
              setState(() {});
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            color: AppColors.titleColor,
          ),
          Text(
            '$_year',
            style: AppStyles.toolbarStyle,
          ),
          IconButton(
            onPressed: () {
              ++_year;
              widget.onChanged(_year);
              setState(() {});
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            color: AppColors.titleColor,
          ),
        ],
      ),
    );
  }
}
