import 'package:bloc/bloc.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/client/booky_client.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/service_api.dart';
import 'package:injectable/injectable.dart';

part 'courses_list_state.dart';
part 'courses_list_cubit.freezed.dart';

const String idKey = 'idKey';
const String coursesCollection = 'courses';

@LazySingleton()
class CoursesListCubit extends Cubit<CoursesListState> {
  CoursesListCubit() : super(const CoursesListState.initial());

  Semester choosenSemester = Semester.SEMESTER_SUMMER;
  int year = 2024;

  final BookyTerminalClient client = getIt.get<BookyTerminalClient>();
  BookyServiceClient get stub => client.clientStub;

  Future<void> fetchCourses([String searchingTitle = '']) async {
    emit(const CoursesListState.loading());

    courses.clear();
    courses.addAll((await stub.listCourses(ListCoursesRequest())).courses);

    final List<Course> coursesToShow = courses.where((Course course) {
      if (course.semester != choosenSemester) {
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
      return false;
    }).toList();

    emit(CoursesListState.loaded(coursesToShow));
  }

  Future<void> addCourse(Course course) async {
    emit(CoursesListState.loaded(courses));
  }

  Future<void> addFakeCourse() async {
    stub.createCourse(CreateCourseRequest(
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
    )).then((_) => fetchCourses());
  }

  Future<void> updateCourse(Course course) async {
    emit(CoursesListState.loaded(courses));
  }

  final List<Course> courses = [];
}
