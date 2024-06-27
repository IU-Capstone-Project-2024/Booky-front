//
//  Generated code. Do not modify.
//  source: booky.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'booky.pb.dart' as $0;

export 'booky.pb.dart';

@$pb.GrpcServiceName('booky.BookyService')
class BookyServiceClient extends $grpc.Client {
  static final _$healthCheck = $grpc.ClientMethod<$0.HealthCheckRequest, $0.HealthCheckResponse>(
      '/booky.BookyService/HealthCheck',
      ($0.HealthCheckRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HealthCheckResponse.fromBuffer(value));
  static final _$createCourse = $grpc.ClientMethod<$0.CreateCourseRequest, $0.CreateCourseResponse>(
      '/booky.BookyService/CreateCourse',
      ($0.CreateCourseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateCourseResponse.fromBuffer(value));
  static final _$getCourse = $grpc.ClientMethod<$0.GetCourseRequest, $0.GetCourseResponse>(
      '/booky.BookyService/GetCourse',
      ($0.GetCourseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCourseResponse.fromBuffer(value));
  static final _$updateCourse = $grpc.ClientMethod<$0.UpdateCourseRequest, $0.UpdateCourseResponse>(
      '/booky.BookyService/UpdateCourse',
      ($0.UpdateCourseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateCourseResponse.fromBuffer(value));
  static final _$deleteCourse = $grpc.ClientMethod<$0.DeleteCourseRequest, $0.DeleteCourseResponse>(
      '/booky.BookyService/DeleteCourse',
      ($0.DeleteCourseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteCourseResponse.fromBuffer(value));
  static final _$listCourses = $grpc.ClientMethod<$0.ListCoursesRequest, $0.ListCoursesResponse>(
      '/booky.BookyService/ListCourses',
      ($0.ListCoursesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListCoursesResponse.fromBuffer(value));
  static final _$createNote = $grpc.ClientMethod<$0.CreateNoteRequest, $0.CreateNoteResponse>(
      '/booky.BookyService/CreateNote',
      ($0.CreateNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateNoteResponse.fromBuffer(value));
  static final _$getNote = $grpc.ClientMethod<$0.GetNoteRequest, $0.GetNoteResponse>(
      '/booky.BookyService/GetNote',
      ($0.GetNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetNoteResponse.fromBuffer(value));
  static final _$updateNote = $grpc.ClientMethod<$0.UpdateNoteRequest, $0.UpdateNoteResponse>(
      '/booky.BookyService/UpdateNote',
      ($0.UpdateNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateNoteResponse.fromBuffer(value));
  static final _$deleteNote = $grpc.ClientMethod<$0.DeleteNoteRequest, $0.DeleteNoteResponse>(
      '/booky.BookyService/DeleteNote',
      ($0.DeleteNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteNoteResponse.fromBuffer(value));
  static final _$listNotes = $grpc.ClientMethod<$0.ListNotesRequest, $0.ListNotesResponse>(
      '/booky.BookyService/ListNotes',
      ($0.ListNotesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListNotesResponse.fromBuffer(value));

  BookyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.HealthCheckResponse> healthCheck($0.HealthCheckRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$healthCheck, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateCourseResponse> createCourse($0.CreateCourseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCourse, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCourseResponse> getCourse($0.GetCourseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCourse, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCourseResponse> updateCourse($0.UpdateCourseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCourse, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCourseResponse> deleteCourse($0.DeleteCourseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCourse, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListCoursesResponse> listCourses($0.ListCoursesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCourses, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateNoteResponse> createNote($0.CreateNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetNoteResponse> getNote($0.GetNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateNoteResponse> updateNote($0.UpdateNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteNoteResponse> deleteNote($0.DeleteNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListNotesResponse> listNotes($0.ListNotesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listNotes, request, options: options);
  }
}

@$pb.GrpcServiceName('booky.BookyServiceApi')
abstract class BookyServiceBase extends $grpc.Service {
  $core.String get $name => 'booky.BookyService';

  BookyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HealthCheckRequest, $0.HealthCheckResponse>(
        'HealthCheck',
        healthCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HealthCheckRequest.fromBuffer(value),
        ($0.HealthCheckResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateCourseRequest, $0.CreateCourseResponse>(
        'CreateCourse',
        createCourse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateCourseRequest.fromBuffer(value),
        ($0.CreateCourseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCourseRequest, $0.GetCourseResponse>(
        'GetCourse',
        getCourse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCourseRequest.fromBuffer(value),
        ($0.GetCourseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCourseRequest, $0.UpdateCourseResponse>(
        'UpdateCourse',
        updateCourse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCourseRequest.fromBuffer(value),
        ($0.UpdateCourseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCourseRequest, $0.DeleteCourseResponse>(
        'DeleteCourse',
        deleteCourse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCourseRequest.fromBuffer(value),
        ($0.DeleteCourseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListCoursesRequest, $0.ListCoursesResponse>(
        'ListCourses',
        listCourses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListCoursesRequest.fromBuffer(value),
        ($0.ListCoursesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateNoteRequest, $0.CreateNoteResponse>(
        'CreateNote',
        createNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateNoteRequest.fromBuffer(value),
        ($0.CreateNoteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNoteRequest, $0.GetNoteResponse>(
        'GetNote',
        getNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNoteRequest.fromBuffer(value),
        ($0.GetNoteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateNoteRequest, $0.UpdateNoteResponse>(
        'UpdateNote',
        updateNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateNoteRequest.fromBuffer(value),
        ($0.UpdateNoteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteNoteRequest, $0.DeleteNoteResponse>(
        'DeleteNote',
        deleteNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteNoteRequest.fromBuffer(value),
        ($0.DeleteNoteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListNotesRequest, $0.ListNotesResponse>(
        'ListNotes',
        listNotes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListNotesRequest.fromBuffer(value),
        ($0.ListNotesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HealthCheckResponse> healthCheck_Pre($grpc.ServiceCall call, $async.Future<$0.HealthCheckRequest> request) async {
    return healthCheck(call, await request);
  }

  $async.Future<$0.CreateCourseResponse> createCourse_Pre($grpc.ServiceCall call, $async.Future<$0.CreateCourseRequest> request) async {
    return createCourse(call, await request);
  }

  $async.Future<$0.GetCourseResponse> getCourse_Pre($grpc.ServiceCall call, $async.Future<$0.GetCourseRequest> request) async {
    return getCourse(call, await request);
  }

  $async.Future<$0.UpdateCourseResponse> updateCourse_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateCourseRequest> request) async {
    return updateCourse(call, await request);
  }

  $async.Future<$0.DeleteCourseResponse> deleteCourse_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCourseRequest> request) async {
    return deleteCourse(call, await request);
  }

  $async.Future<$0.ListCoursesResponse> listCourses_Pre($grpc.ServiceCall call, $async.Future<$0.ListCoursesRequest> request) async {
    return listCourses(call, await request);
  }

  $async.Future<$0.CreateNoteResponse> createNote_Pre($grpc.ServiceCall call, $async.Future<$0.CreateNoteRequest> request) async {
    return createNote(call, await request);
  }

  $async.Future<$0.GetNoteResponse> getNote_Pre($grpc.ServiceCall call, $async.Future<$0.GetNoteRequest> request) async {
    return getNote(call, await request);
  }

  $async.Future<$0.UpdateNoteResponse> updateNote_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateNoteRequest> request) async {
    return updateNote(call, await request);
  }

  $async.Future<$0.DeleteNoteResponse> deleteNote_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteNoteRequest> request) async {
    return deleteNote(call, await request);
  }

  $async.Future<$0.ListNotesResponse> listNotes_Pre($grpc.ServiceCall call, $async.Future<$0.ListNotesRequest> request) async {
    return listNotes(call, await request);
  }

  $async.Future<$0.HealthCheckResponse> healthCheck($grpc.ServiceCall call, $0.HealthCheckRequest request);
  $async.Future<$0.CreateCourseResponse> createCourse($grpc.ServiceCall call, $0.CreateCourseRequest request);
  $async.Future<$0.GetCourseResponse> getCourse($grpc.ServiceCall call, $0.GetCourseRequest request);
  $async.Future<$0.UpdateCourseResponse> updateCourse($grpc.ServiceCall call, $0.UpdateCourseRequest request);
  $async.Future<$0.DeleteCourseResponse> deleteCourse($grpc.ServiceCall call, $0.DeleteCourseRequest request);
  $async.Future<$0.ListCoursesResponse> listCourses($grpc.ServiceCall call, $0.ListCoursesRequest request);
  $async.Future<$0.CreateNoteResponse> createNote($grpc.ServiceCall call, $0.CreateNoteRequest request);
  $async.Future<$0.GetNoteResponse> getNote($grpc.ServiceCall call, $0.GetNoteRequest request);
  $async.Future<$0.UpdateNoteResponse> updateNote($grpc.ServiceCall call, $0.UpdateNoteRequest request);
  $async.Future<$0.DeleteNoteResponse> deleteNote($grpc.ServiceCall call, $0.DeleteNoteRequest request);
  $async.Future<$0.ListNotesResponse> listNotes($grpc.ServiceCall call, $0.ListNotesRequest request);
}
