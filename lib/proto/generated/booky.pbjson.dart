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

@$core.Deprecated('Use trackDescriptor instead')
const Track$json = {
  '1': 'Track',
  '2': [
    {'1': 'TRACK_UNKNOWN', '2': 0},
    {'1': 'TRACK_CORE', '2': 1},
    {'1': 'TRACK_SOFTWARE_DEVELOPMENT', '2': 2},
    {'1': 'TRACK_CYBER_SECURITY', '2': 3},
    {'1': 'TRACK_GAME_DEVELOPMENT', '2': 4},
    {'1': 'TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE', '2': 5},
    {'1': 'TRACK_ROBOTICS', '2': 6},
    {'1': 'TRACK_DATA_SCIENCE', '2': 7},
  ],
};

/// Descriptor for `Track`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List trackDescriptor = $convert.base64Decode(
    'CgVUcmFjaxIRCg1UUkFDS19VTktOT1dOEAASDgoKVFJBQ0tfQ09SRRABEh4KGlRSQUNLX1NPRl'
    'RXQVJFX0RFVkVMT1BNRU5UEAISGAoUVFJBQ0tfQ1lCRVJfU0VDVVJJVFkQAxIaChZUUkFDS19H'
    'QU1FX0RFVkVMT1BNRU5UEAQSKQolVFJBQ0tfQVBQTElFRF9BUlRJRklDSUFMX0lOVEVMTElHRU'
    '5DRRAFEhIKDlRSQUNLX1JPQk9USUNTEAYSFgoSVFJBQ0tfREFUQV9TQ0lFTkNFEAc=');

@$core.Deprecated('Use semesterDescriptor instead')
const Semester$json = {
  '1': 'Semester',
  '2': [
    {'1': 'SEMESTER_UNKNOWN', '2': 0},
    {'1': 'SEMESTER_FALL', '2': 1},
    {'1': 'SEMESTER_SPRING', '2': 2},
    {'1': 'SEMESTER_SUMMER', '2': 3},
  ],
};

/// Descriptor for `Semester`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List semesterDescriptor = $convert.base64Decode(
    'CghTZW1lc3RlchIUChBTRU1FU1RFUl9VTktOT1dOEAASEQoNU0VNRVNURVJfRkFMTBABEhMKD1'
    'NFTUVTVEVSX1NQUklORxACEhMKD1NFTUVTVEVSX1NVTU1FUhAD');

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
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'tracks', '3': 4, '4': 3, '5': 14, '6': '.booky.Track', '10': 'tracks'},
    {'1': 'semester', '3': 5, '4': 1, '5': 14, '6': '.booky.Semester', '10': 'semester'},
    {'1': 'year', '3': 6, '4': 1, '5': 5, '10': 'year'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `Course`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseDescriptor = $convert.base64Decode(
    'CgZDb3Vyc2USDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIlCgtkZXNjcm'
    'lwdGlvbhgDIAEoCUgAUgtkZXNjcmlwdGlvbogBARIkCgZ0cmFja3MYBCADKA4yDC5ib29reS5U'
    'cmFja1IGdHJhY2tzEisKCHNlbWVzdGVyGAUgASgOMg8uYm9va3kuU2VtZXN0ZXJSCHNlbWVzdG'
    'VyEhIKBHllYXIYBiABKAVSBHllYXJCDgoMX2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use noteDescriptor instead')
const Note$json = {
  '1': 'Note',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'course_id', '3': 2, '4': 1, '5': 9, '10': 'courseId'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'body', '3': 4, '4': 1, '5': 9, '10': 'body'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'updatedAt', '17': true},
    {'1': 'publisher', '3': 7, '4': 1, '5': 11, '6': '.booky.User', '10': 'publisher'},
  ],
  '8': [
    {'1': '_updated_at'},
  ],
};

/// Descriptor for `Note`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteDescriptor = $convert.base64Decode(
    'CgROb3RlEg4KAmlkGAEgASgJUgJpZBIbCgljb3Vyc2VfaWQYAiABKAlSCGNvdXJzZUlkEhQKBX'
    'RpdGxlGAMgASgJUgV0aXRsZRISCgRib2R5GAQgASgJUgRib2R5EjkKCmNyZWF0ZWRfYXQYBSAB'
    'KAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSPgoKdXBkYXRlZF9hdB'
    'gGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJdXBkYXRlZEF0iAEBEikKCXB1'
    'Ymxpc2hlchgHIAEoCzILLmJvb2t5LlVzZXJSCXB1Ymxpc2hlckINCgtfdXBkYXRlZF9hdA==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 4, '4': 1, '5': 11, '6': '.booky.Password', '10': 'password'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgAS'
    'gJUgVlbWFpbBIrCghwYXNzd29yZBgEIAEoCzIPLmJvb2t5LlBhc3N3b3JkUghwYXNzd29yZBI5'
    'CgpjcmVhdGVkX2F0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZE'
    'F0');

@$core.Deprecated('Use passwordDescriptor instead')
const Password$json = {
  '1': 'Password',
  '2': [
    {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
    {'1': 'password_hash', '3': 2, '4': 1, '5': 9, '10': 'passwordHash'},
  ],
};

/// Descriptor for `Password`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passwordDescriptor = $convert.base64Decode(
    'CghQYXNzd29yZBIaCghwYXNzd29yZBgBIAEoCVIIcGFzc3dvcmQSIwoNcGFzc3dvcmRfaGFzaB'
    'gCIAEoCVIMcGFzc3dvcmRIYXNo');

@$core.Deprecated('Use createCourseDataDescriptor instead')
const CreateCourseData$json = {
  '1': 'CreateCourseData',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'tracks', '3': 3, '4': 3, '5': 14, '6': '.booky.Track', '10': 'tracks'},
    {'1': 'semester', '3': 4, '4': 1, '5': 14, '6': '.booky.Semester', '10': 'semester'},
    {'1': 'year', '3': 5, '4': 1, '5': 5, '10': 'year'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `CreateCourseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCourseDataDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVDb3Vyc2VEYXRhEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIlCgtkZXNjcmlwdGlvbh'
    'gCIAEoCUgAUgtkZXNjcmlwdGlvbogBARIkCgZ0cmFja3MYAyADKA4yDC5ib29reS5UcmFja1IG'
    'dHJhY2tzEisKCHNlbWVzdGVyGAQgASgOMg8uYm9va3kuU2VtZXN0ZXJSCHNlbWVzdGVyEhIKBH'
    'llYXIYBSABKAVSBHllYXJCDgoMX2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use createCourseRequestDescriptor instead')
const CreateCourseRequest$json = {
  '1': 'CreateCourseRequest',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.booky.CreateCourseData', '10': 'data'},
  ],
};

/// Descriptor for `CreateCourseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCourseRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVDb3Vyc2VSZXF1ZXN0EisKBGRhdGEYASABKAsyFy5ib29reS5DcmVhdGVDb3Vyc2'
    'VEYXRhUgRkYXRh');

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
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.booky.CreateCourseData', '10': 'data'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UpdateCourseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCourseRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVDb3Vyc2VSZXF1ZXN0EisKBGRhdGEYASABKAsyFy5ib29reS5DcmVhdGVDb3Vyc2'
    'VEYXRhUgRkYXRhEg4KAmlkGAIgASgJUgJpZA==');

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

@$core.Deprecated('Use createNoteDataDescriptor instead')
const CreateNoteData$json = {
  '1': 'CreateNoteData',
  '2': [
    {'1': 'course_id', '3': 1, '4': 1, '5': 9, '10': 'courseId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateNoteData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteDataDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVOb3RlRGF0YRIbCgljb3Vyc2VfaWQYASABKAlSCGNvdXJzZUlkEhQKBXRpdGxlGA'
    'IgASgJUgV0aXRsZRISCgRib2R5GAMgASgJUgRib2R5EhcKB3VzZXJfaWQYBCABKAlSBnVzZXJJ'
    'ZA==');

@$core.Deprecated('Use createNoteRequestDescriptor instead')
const CreateNoteRequest$json = {
  '1': 'CreateNoteRequest',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.booky.CreateNoteData', '10': 'data'},
  ],
};

/// Descriptor for `CreateNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVOb3RlUmVxdWVzdBIpCgRkYXRhGAEgASgLMhUuYm9va3kuQ3JlYXRlTm90ZURhdG'
    'FSBGRhdGE=');

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
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.booky.CreateNoteData', '10': 'data'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UpdateNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateNoteRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVOb3RlUmVxdWVzdBIpCgRkYXRhGAEgASgLMhUuYm9va3kuQ3JlYXRlTm90ZURhdG'
    'FSBGRhdGESDgoCaWQYAiABKAlSAmlk');

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

@$core.Deprecated('Use fileDescriptor instead')
const File$json = {
  '1': 'File',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'course_id', '3': 2, '4': 1, '5': 9, '10': 'courseId'},
    {'1': 'content', '3': 3, '4': 1, '5': 12, '10': 'content'},
    {'1': 'filename', '3': 4, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'publisher', '3': 5, '4': 1, '5': 11, '6': '.booky.User', '10': 'publisher'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEg4KAmlkGAEgASgJUgJpZBIbCgljb3Vyc2VfaWQYAiABKAlSCGNvdXJzZUlkEhgKB2'
    'NvbnRlbnQYAyABKAxSB2NvbnRlbnQSGgoIZmlsZW5hbWUYBCABKAlSCGZpbGVuYW1lEikKCXB1'
    'Ymxpc2hlchgFIAEoCzILLmJvb2t5LlVzZXJSCXB1Ymxpc2hlchI5CgpjcmVhdGVkX2F0GAYgAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0');

@$core.Deprecated('Use createFileDataDescriptor instead')
const CreateFileData$json = {
  '1': 'CreateFileData',
  '2': [
    {'1': 'course_id', '3': 1, '4': 1, '5': 9, '10': 'courseId'},
    {'1': 'content', '3': 2, '4': 1, '5': 12, '10': 'content'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateFileData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFileDataDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVGaWxlRGF0YRIbCgljb3Vyc2VfaWQYASABKAlSCGNvdXJzZUlkEhgKB2NvbnRlbn'
    'QYAiABKAxSB2NvbnRlbnQSGgoIZmlsZW5hbWUYAyABKAlSCGZpbGVuYW1lEhcKB3VzZXJfaWQY'
    'BCABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use createFileRequestDescriptor instead')
const CreateFileRequest$json = {
  '1': 'CreateFileRequest',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.booky.CreateFileData', '10': 'data'},
  ],
};

/// Descriptor for `CreateFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFileRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVGaWxlUmVxdWVzdBIpCgRkYXRhGAEgASgLMhUuYm9va3kuQ3JlYXRlRmlsZURhdG'
    'FSBGRhdGE=');

@$core.Deprecated('Use createFileResponseDescriptor instead')
const CreateFileResponse$json = {
  '1': 'CreateFileResponse',
  '2': [
    {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.booky.File', '10': 'file'},
  ],
};

/// Descriptor for `CreateFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFileResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVGaWxlUmVzcG9uc2USHwoEZmlsZRgBIAEoCzILLmJvb2t5LkZpbGVSBGZpbGU=');

@$core.Deprecated('Use getFileRequestDescriptor instead')
const GetFileRequest$json = {
  '1': 'GetFileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRGaWxlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getFileResponseDescriptor instead')
const GetFileResponse$json = {
  '1': 'GetFileResponse',
  '2': [
    {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.booky.File', '10': 'file'},
  ],
};

/// Descriptor for `GetFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRGaWxlUmVzcG9uc2USHwoEZmlsZRgBIAEoCzILLmJvb2t5LkZpbGVSBGZpbGU=');

@$core.Deprecated('Use deleteFileRequestDescriptor instead')
const DeleteFileRequest$json = {
  '1': 'DeleteFileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVGaWxlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteFileResponseDescriptor instead')
const DeleteFileResponse$json = {
  '1': 'DeleteFileResponse',
};

/// Descriptor for `DeleteFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVGaWxlUmVzcG9uc2U=');

@$core.Deprecated('Use listFilesRequestDescriptor instead')
const ListFilesRequest$json = {
  '1': 'ListFilesRequest',
  '2': [
    {'1': 'course_id', '3': 1, '4': 1, '5': 9, '10': 'courseId'},
  ],
};

/// Descriptor for `ListFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFilesRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0RmlsZXNSZXF1ZXN0EhsKCWNvdXJzZV9pZBgBIAEoCVIIY291cnNlSWQ=');

@$core.Deprecated('Use listFilesResponseDescriptor instead')
const ListFilesResponse$json = {
  '1': 'ListFilesResponse',
  '2': [
    {'1': 'files', '3': 1, '4': 3, '5': 11, '6': '.booky.File', '10': 'files'},
  ],
};

/// Descriptor for `ListFilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFilesResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0RmlsZXNSZXNwb25zZRIhCgVmaWxlcxgBIAMoCzILLmJvb2t5LkZpbGVSBWZpbGVz');

