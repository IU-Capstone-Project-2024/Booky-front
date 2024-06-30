//
//  Generated code. Do not modify.
//  source: booky.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Track extends $pb.ProtobufEnum {
  static const Track TRACK_UNKNOWN = Track._(0, _omitEnumNames ? '' : 'TRACK_UNKNOWN');
  static const Track TRACK_CORE = Track._(1, _omitEnumNames ? '' : 'TRACK_CORE');
  static const Track TRACK_SOFTWARE_DEVELOPMENT = Track._(2, _omitEnumNames ? '' : 'TRACK_SOFTWARE_DEVELOPMENT');
  static const Track TRACK_CYBER_SECURITY = Track._(3, _omitEnumNames ? '' : 'TRACK_CYBER_SECURITY');
  static const Track TRACK_GAME_DEVELOPMENT = Track._(4, _omitEnumNames ? '' : 'TRACK_GAME_DEVELOPMENT');
  static const Track TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE = Track._(5, _omitEnumNames ? '' : 'TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE');
  static const Track TRACK_ROBOTICS = Track._(6, _omitEnumNames ? '' : 'TRACK_ROBOTICS');
  static const Track TRACK_DATA_SCIENCE = Track._(7, _omitEnumNames ? '' : 'TRACK_DATA_SCIENCE');

  static const $core.List<Track> values = <Track> [
    TRACK_UNKNOWN,
    TRACK_CORE,
    TRACK_SOFTWARE_DEVELOPMENT,
    TRACK_CYBER_SECURITY,
    TRACK_GAME_DEVELOPMENT,
    TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE,
    TRACK_ROBOTICS,
    TRACK_DATA_SCIENCE,
  ];

  static final $core.Map<$core.int, Track> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Track? valueOf($core.int value) => _byValue[value];

  const Track._($core.int v, $core.String n) : super(v, n);
}

class Semester extends $pb.ProtobufEnum {
  static const Semester SEMESTER_UNKNOWN = Semester._(0, _omitEnumNames ? '' : 'SEMESTER_UNKNOWN');
  static const Semester SEMESTER_FALL = Semester._(1, _omitEnumNames ? '' : 'SEMESTER_FALL');
  static const Semester SEMESTER_SPRING = Semester._(2, _omitEnumNames ? '' : 'SEMESTER_SPRING');
  static const Semester SEMESTER_SUMMER = Semester._(3, _omitEnumNames ? '' : 'SEMESTER_SUMMER');

  static const $core.List<Semester> values = <Semester> [
    SEMESTER_UNKNOWN,
    SEMESTER_FALL,
    SEMESTER_SPRING,
    SEMESTER_SUMMER,
  ];

  static final $core.Map<$core.int, Semester> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Semester? valueOf($core.int value) => _byValue[value];

  const Semester._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
