import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:localstore/localstore.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';
import 'package:booky/proto/generated/booky.pb.dart';

part 'courses_list_state.dart';

const String idKey = 'idKey';
const String coursesCollection = 'courses';

class CoursesListCubit extends Cubit<CoursesListState> {
  CoursesListCubit() : super(CoursesListInitial());

  Future<void> fetchCourses([String searchingTitle = '']) async {
    courses.clear;
    emit(CoursesListLoading());
    final db = Localstore.instance;
    final List<String> keys =
        (await db.collection(coursesCollection).doc().get())?.keys.toList() ??
            [];
    for (String key in keys) {
      final Course course = Course.fromJson(
          (await db.collection(coursesCollection).doc().get())?[key]);
      if (course.title.contains(searchingTitle) && searchingTitle != '') {
        courses.add(course);
      }
    }
    emit(CoursesListLoaded(courses));
  }

  Future<void> addCourse(Course course) async {
    final db = Localstore.instance;

    Random random = Random();
    int id = random.nextInt(4294967295);

    course.id = id.toString();
    courses.add(course);
    Map<String, dynamic> mapToSave = {};
    for (Course course in courses) {
      mapToSave[course.id] = course.toJson();
    }
    await db.collection(coursesCollection).doc().set(mapToSave);

    emit(CoursesListLoaded(courses));
  }

  Future<void> updateCourse(Course course) async {
    final db = Localstore.instance;

    courses.removeWhere((c) => c.id == course.id);
    courses.add(course);

    Map<String, dynamic> mapToSave = {};
    for (Course course in courses) {
      mapToSave[course.id] = course.toJson();
    }
    await db.collection(coursesCollection).doc().set(mapToSave);

    emit(CoursesListLoaded(courses));
  }

  final List<Course> courses = [];
}

class Course {
  Course({required this.id, required this.title, required this.notes});

  String id;
  String title;
  List<Note> notes;

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] as String,
      title: json['title'] as String,
      notes: json['notes'].map((e) => Note.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'notes': notes.map((e) => e.toJson()).toList(),
    };
  }
}

class Note {
  Note({required this.id, required this.title, required this.body});

  String id;
  String title;
  String body;

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
