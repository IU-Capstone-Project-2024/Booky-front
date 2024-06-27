//
//  Generated code. Do not modify.
//  source: booky.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use healthCheckRequestDescriptor instead')
const HealthCheckRequest$json = {
  '1': 'HealthCheckRequest',
};

/// Descriptor for `HealthCheckRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthCheckRequestDescriptor = $convert.base64Decode(
    'ChJIZWFsdGhDaGVja1JlcXVlc3Q=');

@$core.Deprecated('Use healthCheckResponseDescriptor instead')
const HealthCheckResponse$json = {
  '1': 'HealthCheckResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `HealthCheckResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthCheckResponseDescriptor = $convert.base64Decode(
    'ChNIZWFsdGhDaGVja1Jlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

@$core.Deprecated('Use courseDescriptor instead')
const Course$json = {
  '1': 'Course',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Course`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseDescriptor = $convert.base64Decode(
    'CgZDb3Vyc2USDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcm'
    'lwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24=');

@$core.Deprecated('Use noteDescriptor instead')
const Note$json = {
  '1': 'Note',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'course_id', '3': 2, '4': 1, '5': 9, '10': 'courseId'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'body', '3': 4, '4': 1, '5': 9, '10': 'body'},
  ],
};

/// Descriptor for `Note`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteDescriptor = $convert.base64Decode(
    'CgROb3RlEg4KAmlkGAEgASgJUgJpZBIbCgljb3Vyc2VfaWQYAiABKAlSCGNvdXJzZUlkEhQKBX'
    'RpdGxlGAMgASgJUgV0aXRsZRISCgRib2R5GAQgASgJUgRib2R5');

@$core.Deprecated('Use createCourseRequestDescriptor instead')
const CreateCourseRequest$json = {
  '1': 'CreateCourseRequest',
  '2': [
    {'1': 'course', '3': 1, '4': 1, '5': 11, '6': '.booky.Course', '10': 'course'},
  ],
};

/// Descriptor for `CreateCourseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCourseRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVDb3Vyc2VSZXF1ZXN0EiUKBmNvdXJzZRgBIAEoCzINLmJvb2t5LkNvdXJzZVIGY2'
    '91cnNl');

@$core.Deprecated('Use createCourseResponseDescriptor instead')
const CreateCourseResponse$json = {
  '1': 'CreateCourseResponse',
  '2': [
    {'1': 'course', '3': 1, '4': 1, '5': 11, '6': '.booky.Course', '10': 'course'},
  ],
};

/// Descriptor for `CreateCourseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCourseResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVDb3Vyc2VSZXNwb25zZRIlCgZjb3Vyc2UYASABKAsyDS5ib29reS5Db3Vyc2VSBm'
    'NvdXJzZQ==');

@$core.Deprecated('Use getCourseRequestDescriptor instead')
const GetCourseRequest$json = {
  '1': 'GetCourseRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetCourseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCourseRequestDescriptor = $convert.base64Decode(
    'ChBHZXRDb3Vyc2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getCourseResponseDescriptor instead')
const GetCourseResponse$json = {
  '1': 'GetCourseResponse',
  '2': [
    {'1': 'course', '3': 1, '4': 1, '5': 11, '6': '.booky.Course', '10': 'course'},
  ],
};

/// Descriptor for `GetCourseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCourseResponseDescriptor = $convert.base64Decode(
    'ChFHZXRDb3Vyc2VSZXNwb25zZRIlCgZjb3Vyc2UYASABKAsyDS5ib29reS5Db3Vyc2VSBmNvdX'
    'JzZQ==');

@$core.Deprecated('Use updateCourseRequestDescriptor instead')
const UpdateCourseRequest$json = {
  '1': 'UpdateCourseRequest',
  '2': [
    {'1': 'course', '3': 1, '4': 1, '5': 11, '6': '.booky.Course', '10': 'course'},
  ],
};

/// Descriptor for `UpdateCourseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCourseRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVDb3Vyc2VSZXF1ZXN0EiUKBmNvdXJzZRgBIAEoCzINLmJvb2t5LkNvdXJzZVIGY2'
    '91cnNl');

@$core.Deprecated('Use updateCourseResponseDescriptor instead')
const UpdateCourseResponse$json = {
  '1': 'UpdateCourseResponse',
  '2': [
    {'1': 'course', '3': 1, '4': 1, '5': 11, '6': '.booky.Course', '10': 'course'},
  ],
};

/// Descriptor for `UpdateCourseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCourseResponseDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVDb3Vyc2VSZXNwb25zZRIlCgZjb3Vyc2UYASABKAsyDS5ib29reS5Db3Vyc2VSBm'
    'NvdXJzZQ==');

@$core.Deprecated('Use deleteCourseRequestDescriptor instead')
const DeleteCourseRequest$json = {
  '1': 'DeleteCourseRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteCourseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCourseRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVDb3Vyc2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteCourseResponseDescriptor instead')
const DeleteCourseResponse$json = {
  '1': 'DeleteCourseResponse',
};

/// Descriptor for `DeleteCourseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCourseResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVDb3Vyc2VSZXNwb25zZQ==');

@$core.Deprecated('Use listCoursesRequestDescriptor instead')
const ListCoursesRequest$json = {
  '1': 'ListCoursesRequest',
};

/// Descriptor for `ListCoursesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCoursesRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0Q291cnNlc1JlcXVlc3Q=');

@$core.Deprecated('Use listCoursesResponseDescriptor instead')
const ListCoursesResponse$json = {
  '1': 'ListCoursesResponse',
  '2': [
    {'1': 'courses', '3': 1, '4': 3, '5': 11, '6': '.booky.Course', '10': 'courses'},
  ],
};

/// Descriptor for `ListCoursesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCoursesResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0Q291cnNlc1Jlc3BvbnNlEicKB2NvdXJzZXMYASADKAsyDS5ib29reS5Db3Vyc2VSB2'
    'NvdXJzZXM=');

@$core.Deprecated('Use createNoteRequestDescriptor instead')
const CreateNoteRequest$json = {
  '1': 'CreateNoteRequest',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.booky.Note', '10': 'note'},
  ],
};

/// Descriptor for `CreateNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVOb3RlUmVxdWVzdBIfCgRub3RlGAEgASgLMgsuYm9va3kuTm90ZVIEbm90ZQ==');

@$core.Deprecated('Use createNoteResponseDescriptor instead')
const CreateNoteResponse$json = {
  '1': 'CreateNoteResponse',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.booky.Note', '10': 'note'},
  ],
};

/// Descriptor for `CreateNoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVOb3RlUmVzcG9uc2USHwoEbm90ZRgBIAEoCzILLmJvb2t5Lk5vdGVSBG5vdGU=');

@$core.Deprecated('Use getNoteRequestDescriptor instead')
const GetNoteRequest$json = {
  '1': 'GetNoteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNoteRequestDescriptor = $convert.base64Decode(
    'Cg5HZXROb3RlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getNoteResponseDescriptor instead')
const GetNoteResponse$json = {
  '1': 'GetNoteResponse',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.booky.Note', '10': 'note'},
  ],
};

/// Descriptor for `GetNoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNoteResponseDescriptor = $convert.base64Decode(
    'Cg9HZXROb3RlUmVzcG9uc2USHwoEbm90ZRgBIAEoCzILLmJvb2t5Lk5vdGVSBG5vdGU=');

@$core.Deprecated('Use updateNoteRequestDescriptor instead')
const UpdateNoteRequest$json = {
  '1': 'UpdateNoteRequest',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.booky.Note', '10': 'note'},
  ],
};

/// Descriptor for `UpdateNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateNoteRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVOb3RlUmVxdWVzdBIfCgRub3RlGAEgASgLMgsuYm9va3kuTm90ZVIEbm90ZQ==');

@$core.Deprecated('Use updateNoteResponseDescriptor instead')
const UpdateNoteResponse$json = {
  '1': 'UpdateNoteResponse',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.booky.Note', '10': 'note'},
  ],
};

/// Descriptor for `UpdateNoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateNoteResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVOb3RlUmVzcG9uc2USHwoEbm90ZRgBIAEoCzILLmJvb2t5Lk5vdGVSBG5vdGU=');

@$core.Deprecated('Use deleteNoteRequestDescriptor instead')
const DeleteNoteRequest$json = {
  '1': 'DeleteNoteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNoteRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVOb3RlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteNoteResponseDescriptor instead')
const DeleteNoteResponse$json = {
  '1': 'DeleteNoteResponse',
};

/// Descriptor for `DeleteNoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNoteResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVOb3RlUmVzcG9uc2U=');

@$core.Deprecated('Use listNotesRequestDescriptor instead')
const ListNotesRequest$json = {
  '1': 'ListNotesRequest',
  '2': [
    {'1': 'course_id', '3': 1, '4': 1, '5': 9, '10': 'courseId'},
  ],
};

/// Descriptor for `ListNotesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNotesRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0Tm90ZXNSZXF1ZXN0EhsKCWNvdXJzZV9pZBgBIAEoCVIIY291cnNlSWQ=');

@$core.Deprecated('Use listNotesResponseDescriptor instead')
const ListNotesResponse$json = {
  '1': 'ListNotesResponse',
  '2': [
    {'1': 'notes', '3': 1, '4': 3, '5': 11, '6': '.booky.Note', '10': 'notes'},
  ],
};

/// Descriptor for `ListNotesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNotesResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0Tm90ZXNSZXNwb25zZRIhCgVub3RlcxgBIAMoCzILLmJvb2t5Lk5vdGVSBW5vdGVz');

