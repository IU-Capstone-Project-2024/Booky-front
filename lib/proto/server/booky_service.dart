import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';
import 'package:protobuf/protobuf.dart';

class BookyService extends BookyServiceBase {
  @override
  Future<CreateCourseResponse> createCourse(ServiceCall call, CreateCourseRequest request) {
    // TODO: implement createCourse
    throw UnimplementedError();
  }

  @override
  Future<CreateNoteResponse> createNote(ServiceCall call, CreateNoteRequest request) {
    // TODO: implement createNote
    throw UnimplementedError();
  }

  @override
  Future<DeleteCourseResponse> deleteCourse(ServiceCall call, DeleteCourseRequest request) {
    // TODO: implement deleteCourse
    throw UnimplementedError();
  }

  @override
  Future<DeleteNoteResponse> deleteNote(ServiceCall call, DeleteNoteRequest request) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<GetCourseResponse> getCourse(ServiceCall call, GetCourseRequest request) {
    // TODO: implement getCourse
    throw UnimplementedError();
  }

  @override
  Future<GetNoteResponse> getNote(ServiceCall call, GetNoteRequest request) {
    // TODO: implement getNote
    throw UnimplementedError();
  }

  @override
  Future<HealthCheckResponse> healthCheck(ServiceCall call, HealthCheckRequest request) {
    // TODO: implement healthCheck
    throw UnimplementedError();
  }

  @override
  Future<ListCoursesResponse> listCourses(ServiceCall call, ListCoursesRequest request) {
    // TODO: implement listCourses
    throw UnimplementedError();
  }

  @override
  Future<ListNotesResponse> listNotes(ServiceCall call, ListNotesRequest request) {
    // TODO: implement listNotes
    throw UnimplementedError();
  }

  @override
  Future<UpdateCourseResponse> updateCourse(ServiceCall call, UpdateCourseRequest request) {
    // TODO: implement updateCourse
    throw UnimplementedError();
  }

  @override
  Future<UpdateNoteResponse> updateNote(ServiceCall call, UpdateNoteRequest request) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
  
  @override
  Future<CreateFileResponse> createFile(ServiceCall call, CreateFileRequest request) {
    // TODO: implement createFile
    throw UnimplementedError();
  }
  
  @override
  Future<DeleteFileResponse> deleteFile(ServiceCall call, DeleteFileRequest request) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }
  
  @override
  Future<GetFileResponse> getFile(ServiceCall call, GetFileRequest request) {
    // TODO: implement getFile
    throw UnimplementedError();
  }
  
  @override
  Future<ListFilesResponse> listFiles(ServiceCall call, ListFilesRequest request) {
    // TODO: implement listFiles
    throw UnimplementedError();
  }
  
  @override
  Future<GetImprovedNoteResponse> getImprovedNote(ServiceCall call, GetImprovedNoteRequest request) {
    // TODO: implement getImprovedNote
    throw UnimplementedError();
  }
}