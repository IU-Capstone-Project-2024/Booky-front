part of 'courses_list_cubit.dart';

@immutable
sealed class CoursesListState {}

final class CoursesListInitial extends CoursesListState {}

final class CoursesListLoading extends CoursesListState {}

final class CoursesListLoaded extends CoursesListState {
  final List<Course> courses;
  CoursesListLoaded(this.courses);
}
