part of 'courses_list_cubit.dart';

@freezed
abstract class CoursesListState with _$CoursesListState {
  const factory CoursesListState.initial() = _CoursesListInitial;
  const factory CoursesListState.loaded(List<Course> courses) = _CoursesListLoaded;
  const factory CoursesListState.error() = _CoursesListError;
  const factory CoursesListState.loading() = _CoursesListLoading;
}
