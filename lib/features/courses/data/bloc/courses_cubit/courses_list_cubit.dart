import 'package:bloc/bloc.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/client/booky_client.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'courses_list_state.dart';
part 'courses_list_cubit.freezed.dart';

const String idKey = 'idKey';
const String coursesCollection = 'courses';

@LazySingleton()
class CoursesListCubit extends Cubit<CoursesListState> {
  CoursesListCubit() : super(const CoursesListState.initial());

  Semester semester = Semester.SEMESTER_SUMMER;
  int year = 2024;
  bool showSearchingField = false;

  final BookyTerminalClient client = getIt.get<BookyTerminalClient>();
  BookyServiceClient get stub => client.clientStub;

  Future<void> fetchCourses([String searchingTitle = '']) async {
    emit(const CoursesListState.loading());

    courses.clear();
    courses.addAll((await stub.listCourses(ListCoursesRequest())).courses);

    final List<Course> coursesToShow = courses.where((Course course) {
      if (course.semester != semester) {
        return false;
      }
      if (year != course.year) {
        return false;
      }
      if (searchingTitle.isEmpty) {
        return true;
      }
      if (course.title.toLowerCase().contains(searchingTitle.toLowerCase())) {
        return true;
      }
      return true;
    }).toList();

    emit(CoursesListState.loaded(coursesToShow));
  }

  void setSemester(Semester semester) {
    semester = semester;
    fetchCourses();
  }

  void setYear(int year) {
    this.year = year;
    fetchCourses();
  }

  Future<void> createCourse(Course courseData) async {

    stub
        .createCourse(CreateCourseRequest(
            data: CreateCourseData(
          title: courseData.title,
          description: courseData.description,
          tracks: courseData.tracks,
          semester: courseData.semester,
          year: courseData.year,
        )))
        .then((_) => fetchCourses());
  }

  Future<void> addFakeCourse() async {
    stub
        .createCourse(CreateCourseRequest(
          data: CreateCourseData(
            title: 'Introduction to AI',
            description: 'Description',
            tracks: [
              Track.TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE,
              Track.TRACK_DATA_SCIENCE,
            ],
            semester: Semester.SEMESTER_FALL,
            year: 2023,
          ),
        ))
        .then((_) => fetchCourses());
  }

  Future<void> updateCourse(Course course) async {
    stub
        .updateCourse(
          UpdateCourseRequest(
            data: CreateCourseData(
              title: course.title,
              description: course.description,
              tracks: course.tracks,
              semester: course.semester,
              year: course.year,
            ),
            id: course.id,
          ),
        )
        .then((_) => fetchCourses());
  }

  Future<void> deleteCourse(Course course) async {
    stub
        .deleteCourse(
          DeleteCourseRequest(id: course.id),
        )
        .then((_) => fetchCourses());
  }

  final List<Course> courses = [];
}
