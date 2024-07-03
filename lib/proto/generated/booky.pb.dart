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

import 'booky.pbenum.dart';
import '../google/protobuf/timestamp.pb.dart' as $1;

export 'booky.pbenum.dart';

class HealthCheckRequest extends $pb.GeneratedMessage {
  factory HealthCheckRequest() => create();
  HealthCheckRequest._() : super();
  factory HealthCheckRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheckRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthCheckRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthCheckRequest clone() => HealthCheckRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthCheckRequest copyWith(void Function(HealthCheckRequest) updates) => super.copyWith((message) => updates(message as HealthCheckRequest)) as HealthCheckRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthCheckRequest create() => HealthCheckRequest._();
  HealthCheckRequest createEmptyInstance() => create();
  static $pb.PbList<HealthCheckRequest> createRepeated() => $pb.PbList<HealthCheckRequest>();
  @$core.pragma('dart2js:noInline')
  static HealthCheckRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthCheckRequest>(create);
  static HealthCheckRequest? _defaultInstance;
}

class HealthCheckResponse extends $pb.GeneratedMessage {
  factory HealthCheckResponse({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  HealthCheckResponse._() : super();
  factory HealthCheckResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheckResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthCheckResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthCheckResponse clone() => HealthCheckResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthCheckResponse copyWith(void Function(HealthCheckResponse) updates) => super.copyWith((message) => updates(message as HealthCheckResponse)) as HealthCheckResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthCheckResponse create() => HealthCheckResponse._();
  HealthCheckResponse createEmptyInstance() => create();
  static $pb.PbList<HealthCheckResponse> createRepeated() => $pb.PbList<HealthCheckResponse>();
  @$core.pragma('dart2js:noInline')
  static HealthCheckResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthCheckResponse>(create);
  static HealthCheckResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class Course extends $pb.GeneratedMessage {
  factory Course({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.Iterable<Track>? tracks,
    Semester? semester,
    $core.int? year,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (tracks != null) {
      $result.tracks.addAll(tracks);
    }
    if (semester != null) {
      $result.semester = semester;
    }
    if (year != null) {
      $result.year = year;
    }
    return $result;
  }
  Course._() : super();
  factory Course.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Course.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Course', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..pc<Track>(4, _omitFieldNames ? '' : 'tracks', $pb.PbFieldType.KE, valueOf: Track.valueOf, enumValues: Track.values, defaultEnumValue: Track.TRACK_UNKNOWN)
    ..e<Semester>(5, _omitFieldNames ? '' : 'semester', $pb.PbFieldType.OE, defaultOrMaker: Semester.SEMESTER_UNKNOWN, valueOf: Semester.valueOf, enumValues: Semester.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'year', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Course clone() => Course()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Course copyWith(void Function(Course) updates) => super.copyWith((message) => updates(message as Course)) as Course;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Course create() => Course._();
  Course createEmptyInstance() => create();
  static $pb.PbList<Course> createRepeated() => $pb.PbList<Course>();
  @$core.pragma('dart2js:noInline')
  static Course getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Course>(create);
  static Course? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Track> get tracks => $_getList(3);

  @$pb.TagNumber(5)
  Semester get semester => $_getN(4);
  @$pb.TagNumber(5)
  set semester(Semester v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSemester() => $_has(4);
  @$pb.TagNumber(5)
  void clearSemester() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get year => $_getIZ(5);
  @$pb.TagNumber(6)
  set year($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasYear() => $_has(5);
  @$pb.TagNumber(6)
  void clearYear() => clearField(6);
}

class Note extends $pb.GeneratedMessage {
  factory Note({
    $core.String? id,
    $core.String? courseId,
    $core.String? title,
    $core.String? body,
    $1.Timestamp? createdAt,
    $1.Timestamp? updatedAt,
    User? publisher,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (courseId != null) {
      $result.courseId = courseId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (body != null) {
      $result.body = body;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (publisher != null) {
      $result.publisher = publisher;
    }
    return $result;
  }
  Note._() : super();
  factory Note.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Note.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Note', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'courseId')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'body')
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', subBuilder: $1.Timestamp.create)
    ..aOM<User>(7, _omitFieldNames ? '' : 'publisher', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Note clone() => Note()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Note copyWith(void Function(Note) updates) => super.copyWith((message) => updates(message as Note)) as Note;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Note create() => Note._();
  Note createEmptyInstance() => create();
  static $pb.PbList<Note> createRepeated() => $pb.PbList<Note>();
  @$core.pragma('dart2js:noInline')
  static Note getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Note>(create);
  static Note? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get courseId => $_getSZ(1);
  @$pb.TagNumber(2)
  set courseId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCourseId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCourseId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get body => $_getSZ(3);
  @$pb.TagNumber(4)
  set body($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearBody() => clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureUpdatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  User get publisher => $_getN(6);
  @$pb.TagNumber(7)
  set publisher(User v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublisher() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublisher() => clearField(7);
  @$pb.TagNumber(7)
  User ensurePublisher() => $_ensure(6);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? id,
    $core.String? name,
    $core.String? email,
    Password? password,
    $1.Timestamp? createdAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOM<Password>(4, _omitFieldNames ? '' : 'password', subBuilder: Password.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  Password get password => $_getN(3);
  @$pb.TagNumber(4)
  set password(Password v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);
  @$pb.TagNumber(4)
  Password ensurePassword() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureCreatedAt() => $_ensure(4);
}

class Password extends $pb.GeneratedMessage {
  factory Password({
    $core.String? password,
    $core.String? passwordHash,
  }) {
    final $result = create();
    if (password != null) {
      $result.password = password;
    }
    if (passwordHash != null) {
      $result.passwordHash = passwordHash;
    }
    return $result;
  }
  Password._() : super();
  factory Password.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Password.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Password', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'password')
    ..aOS(2, _omitFieldNames ? '' : 'passwordHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Password clone() => Password()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Password copyWith(void Function(Password) updates) => super.copyWith((message) => updates(message as Password)) as Password;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Password create() => Password._();
  Password createEmptyInstance() => create();
  static $pb.PbList<Password> createRepeated() => $pb.PbList<Password>();
  @$core.pragma('dart2js:noInline')
  static Password getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Password>(create);
  static Password? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get passwordHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set passwordHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPasswordHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPasswordHash() => clearField(2);
}

class CreateCourseData extends $pb.GeneratedMessage {
  factory CreateCourseData({
    $core.String? title,
    $core.String? description,
    $core.Iterable<Track>? tracks,
    Semester? semester,
    $core.int? year,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (tracks != null) {
      $result.tracks.addAll(tracks);
    }
    if (semester != null) {
      $result.semester = semester;
    }
    if (year != null) {
      $result.year = year;
    }
    return $result;
  }
  CreateCourseData._() : super();
  factory CreateCourseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCourseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCourseData', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pc<Track>(3, _omitFieldNames ? '' : 'tracks', $pb.PbFieldType.KE, valueOf: Track.valueOf, enumValues: Track.values, defaultEnumValue: Track.TRACK_UNKNOWN)
    ..e<Semester>(4, _omitFieldNames ? '' : 'semester', $pb.PbFieldType.OE, defaultOrMaker: Semester.SEMESTER_UNKNOWN, valueOf: Semester.valueOf, enumValues: Semester.values)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'year', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCourseData clone() => CreateCourseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCourseData copyWith(void Function(CreateCourseData) updates) => super.copyWith((message) => updates(message as CreateCourseData)) as CreateCourseData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCourseData create() => CreateCourseData._();
  CreateCourseData createEmptyInstance() => create();
  static $pb.PbList<CreateCourseData> createRepeated() => $pb.PbList<CreateCourseData>();
  @$core.pragma('dart2js:noInline')
  static CreateCourseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCourseData>(create);
  static CreateCourseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Track> get tracks => $_getList(2);

  @$pb.TagNumber(4)
  Semester get semester => $_getN(3);
  @$pb.TagNumber(4)
  set semester(Semester v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSemester() => $_has(3);
  @$pb.TagNumber(4)
  void clearSemester() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get year => $_getIZ(4);
  @$pb.TagNumber(5)
  set year($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasYear() => $_has(4);
  @$pb.TagNumber(5)
  void clearYear() => clearField(5);
}

class CreateCourseRequest extends $pb.GeneratedMessage {
  factory CreateCourseRequest({
    CreateCourseData? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CreateCourseRequest._() : super();
  factory CreateCourseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCourseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCourseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<CreateCourseData>(1, _omitFieldNames ? '' : 'data', subBuilder: CreateCourseData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCourseRequest clone() => CreateCourseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCourseRequest copyWith(void Function(CreateCourseRequest) updates) => super.copyWith((message) => updates(message as CreateCourseRequest)) as CreateCourseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCourseRequest create() => CreateCourseRequest._();
  CreateCourseRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCourseRequest> createRepeated() => $pb.PbList<CreateCourseRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCourseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCourseRequest>(create);
  static CreateCourseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CreateCourseData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(CreateCourseData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  CreateCourseData ensureData() => $_ensure(0);
}

class CreateCourseResponse extends $pb.GeneratedMessage {
  factory CreateCourseResponse({
    Course? course,
  }) {
    final $result = create();
    if (course != null) {
      $result.course = course;
    }
    return $result;
  }
  CreateCourseResponse._() : super();
  factory CreateCourseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCourseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCourseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<Course>(1, _omitFieldNames ? '' : 'course', subBuilder: Course.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCourseResponse clone() => CreateCourseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCourseResponse copyWith(void Function(CreateCourseResponse) updates) => super.copyWith((message) => updates(message as CreateCourseResponse)) as CreateCourseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCourseResponse create() => CreateCourseResponse._();
  CreateCourseResponse createEmptyInstance() => create();
  static $pb.PbList<CreateCourseResponse> createRepeated() => $pb.PbList<CreateCourseResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateCourseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCourseResponse>(create);
  static CreateCourseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Course get course => $_getN(0);
  @$pb.TagNumber(1)
  set course(Course v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourse() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourse() => clearField(1);
  @$pb.TagNumber(1)
  Course ensureCourse() => $_ensure(0);
}

class GetCourseRequest extends $pb.GeneratedMessage {
  factory GetCourseRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetCourseRequest._() : super();
  factory GetCourseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCourseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCourseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCourseRequest clone() => GetCourseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCourseRequest copyWith(void Function(GetCourseRequest) updates) => super.copyWith((message) => updates(message as GetCourseRequest)) as GetCourseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCourseRequest create() => GetCourseRequest._();
  GetCourseRequest createEmptyInstance() => create();
  static $pb.PbList<GetCourseRequest> createRepeated() => $pb.PbList<GetCourseRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCourseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCourseRequest>(create);
  static GetCourseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetCourseResponse extends $pb.GeneratedMessage {
  factory GetCourseResponse({
    Course? course,
  }) {
    final $result = create();
    if (course != null) {
      $result.course = course;
    }
    return $result;
  }
  GetCourseResponse._() : super();
  factory GetCourseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCourseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCourseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<Course>(1, _omitFieldNames ? '' : 'course', subBuilder: Course.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCourseResponse clone() => GetCourseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCourseResponse copyWith(void Function(GetCourseResponse) updates) => super.copyWith((message) => updates(message as GetCourseResponse)) as GetCourseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCourseResponse create() => GetCourseResponse._();
  GetCourseResponse createEmptyInstance() => create();
  static $pb.PbList<GetCourseResponse> createRepeated() => $pb.PbList<GetCourseResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCourseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCourseResponse>(create);
  static GetCourseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Course get course => $_getN(0);
  @$pb.TagNumber(1)
  set course(Course v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourse() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourse() => clearField(1);
  @$pb.TagNumber(1)
  Course ensureCourse() => $_ensure(0);
}

class UpdateCourseRequest extends $pb.GeneratedMessage {
  factory UpdateCourseRequest({
    CreateCourseData? data,
    $core.String? id,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UpdateCourseRequest._() : super();
  factory UpdateCourseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCourseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCourseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<CreateCourseData>(1, _omitFieldNames ? '' : 'data', subBuilder: CreateCourseData.create)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCourseRequest clone() => UpdateCourseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCourseRequest copyWith(void Function(UpdateCourseRequest) updates) => super.copyWith((message) => updates(message as UpdateCourseRequest)) as UpdateCourseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCourseRequest create() => UpdateCourseRequest._();
  UpdateCourseRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCourseRequest> createRepeated() => $pb.PbList<UpdateCourseRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCourseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCourseRequest>(create);
  static UpdateCourseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CreateCourseData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(CreateCourseData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  CreateCourseData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class UpdateCourseResponse extends $pb.GeneratedMessage {
  factory UpdateCourseResponse({
    Course? course,
  }) {
    final $result = create();
    if (course != null) {
      $result.course = course;
    }
    return $result;
  }
  UpdateCourseResponse._() : super();
  factory UpdateCourseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCourseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCourseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<Course>(1, _omitFieldNames ? '' : 'course', subBuilder: Course.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCourseResponse clone() => UpdateCourseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCourseResponse copyWith(void Function(UpdateCourseResponse) updates) => super.copyWith((message) => updates(message as UpdateCourseResponse)) as UpdateCourseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCourseResponse create() => UpdateCourseResponse._();
  UpdateCourseResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateCourseResponse> createRepeated() => $pb.PbList<UpdateCourseResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateCourseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCourseResponse>(create);
  static UpdateCourseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Course get course => $_getN(0);
  @$pb.TagNumber(1)
  set course(Course v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourse() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourse() => clearField(1);
  @$pb.TagNumber(1)
  Course ensureCourse() => $_ensure(0);
}

class DeleteCourseRequest extends $pb.GeneratedMessage {
  factory DeleteCourseRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteCourseRequest._() : super();
  factory DeleteCourseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCourseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCourseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCourseRequest clone() => DeleteCourseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCourseRequest copyWith(void Function(DeleteCourseRequest) updates) => super.copyWith((message) => updates(message as DeleteCourseRequest)) as DeleteCourseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCourseRequest create() => DeleteCourseRequest._();
  DeleteCourseRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCourseRequest> createRepeated() => $pb.PbList<DeleteCourseRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCourseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCourseRequest>(create);
  static DeleteCourseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteCourseResponse extends $pb.GeneratedMessage {
  factory DeleteCourseResponse() => create();
  DeleteCourseResponse._() : super();
  factory DeleteCourseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCourseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCourseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCourseResponse clone() => DeleteCourseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCourseResponse copyWith(void Function(DeleteCourseResponse) updates) => super.copyWith((message) => updates(message as DeleteCourseResponse)) as DeleteCourseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCourseResponse create() => DeleteCourseResponse._();
  DeleteCourseResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteCourseResponse> createRepeated() => $pb.PbList<DeleteCourseResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteCourseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCourseResponse>(create);
  static DeleteCourseResponse? _defaultInstance;
}

class ListCoursesRequest extends $pb.GeneratedMessage {
  factory ListCoursesRequest() => create();
  ListCoursesRequest._() : super();
  factory ListCoursesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCoursesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCoursesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCoursesRequest clone() => ListCoursesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCoursesRequest copyWith(void Function(ListCoursesRequest) updates) => super.copyWith((message) => updates(message as ListCoursesRequest)) as ListCoursesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCoursesRequest create() => ListCoursesRequest._();
  ListCoursesRequest createEmptyInstance() => create();
  static $pb.PbList<ListCoursesRequest> createRepeated() => $pb.PbList<ListCoursesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCoursesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCoursesRequest>(create);
  static ListCoursesRequest? _defaultInstance;
}

class ListCoursesResponse extends $pb.GeneratedMessage {
  factory ListCoursesResponse({
    $core.Iterable<Course>? courses,
  }) {
    final $result = create();
    if (courses != null) {
      $result.courses.addAll(courses);
    }
    return $result;
  }
  ListCoursesResponse._() : super();
  factory ListCoursesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCoursesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCoursesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..pc<Course>(1, _omitFieldNames ? '' : 'courses', $pb.PbFieldType.PM, subBuilder: Course.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCoursesResponse clone() => ListCoursesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCoursesResponse copyWith(void Function(ListCoursesResponse) updates) => super.copyWith((message) => updates(message as ListCoursesResponse)) as ListCoursesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCoursesResponse create() => ListCoursesResponse._();
  ListCoursesResponse createEmptyInstance() => create();
  static $pb.PbList<ListCoursesResponse> createRepeated() => $pb.PbList<ListCoursesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCoursesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCoursesResponse>(create);
  static ListCoursesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Course> get courses => $_getList(0);
}

class CreateNoteData extends $pb.GeneratedMessage {
  factory CreateNoteData({
    $core.String? courseId,
    $core.String? title,
    $core.String? body,
    $core.String? userId,
  }) {
    final $result = create();
    if (courseId != null) {
      $result.courseId = courseId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (body != null) {
      $result.body = body;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  CreateNoteData._() : super();
  factory CreateNoteData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNoteData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateNoteData', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'courseId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'body')
    ..aOS(4, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateNoteData clone() => CreateNoteData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateNoteData copyWith(void Function(CreateNoteData) updates) => super.copyWith((message) => updates(message as CreateNoteData)) as CreateNoteData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNoteData create() => CreateNoteData._();
  CreateNoteData createEmptyInstance() => create();
  static $pb.PbList<CreateNoteData> createRepeated() => $pb.PbList<CreateNoteData>();
  @$core.pragma('dart2js:noInline')
  static CreateNoteData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNoteData>(create);
  static CreateNoteData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get courseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set courseId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourseId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);
}

class CreateNoteRequest extends $pb.GeneratedMessage {
  factory CreateNoteRequest({
    CreateNoteData? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CreateNoteRequest._() : super();
  factory CreateNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<CreateNoteData>(1, _omitFieldNames ? '' : 'data', subBuilder: CreateNoteData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateNoteRequest clone() => CreateNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateNoteRequest copyWith(void Function(CreateNoteRequest) updates) => super.copyWith((message) => updates(message as CreateNoteRequest)) as CreateNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNoteRequest create() => CreateNoteRequest._();
  CreateNoteRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNoteRequest> createRepeated() => $pb.PbList<CreateNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNoteRequest>(create);
  static CreateNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CreateNoteData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(CreateNoteData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  CreateNoteData ensureData() => $_ensure(0);
}

class CreateNoteResponse extends $pb.GeneratedMessage {
  factory CreateNoteResponse({
    Note? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note = note;
    }
    return $result;
  }
  CreateNoteResponse._() : super();
  factory CreateNoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateNoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<Note>(1, _omitFieldNames ? '' : 'note', subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateNoteResponse clone() => CreateNoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateNoteResponse copyWith(void Function(CreateNoteResponse) updates) => super.copyWith((message) => updates(message as CreateNoteResponse)) as CreateNoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNoteResponse create() => CreateNoteResponse._();
  CreateNoteResponse createEmptyInstance() => create();
  static $pb.PbList<CreateNoteResponse> createRepeated() => $pb.PbList<CreateNoteResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateNoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNoteResponse>(create);
  static CreateNoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Note get note => $_getN(0);
  @$pb.TagNumber(1)
  set note(Note v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => clearField(1);
  @$pb.TagNumber(1)
  Note ensureNote() => $_ensure(0);
}

class GetNoteRequest extends $pb.GeneratedMessage {
  factory GetNoteRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetNoteRequest._() : super();
  factory GetNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNoteRequest clone() => GetNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNoteRequest copyWith(void Function(GetNoteRequest) updates) => super.copyWith((message) => updates(message as GetNoteRequest)) as GetNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNoteRequest create() => GetNoteRequest._();
  GetNoteRequest createEmptyInstance() => create();
  static $pb.PbList<GetNoteRequest> createRepeated() => $pb.PbList<GetNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNoteRequest>(create);
  static GetNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetNoteResponse extends $pb.GeneratedMessage {
  factory GetNoteResponse({
    Note? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note = note;
    }
    return $result;
  }
  GetNoteResponse._() : super();
  factory GetNoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<Note>(1, _omitFieldNames ? '' : 'note', subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNoteResponse clone() => GetNoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNoteResponse copyWith(void Function(GetNoteResponse) updates) => super.copyWith((message) => updates(message as GetNoteResponse)) as GetNoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNoteResponse create() => GetNoteResponse._();
  GetNoteResponse createEmptyInstance() => create();
  static $pb.PbList<GetNoteResponse> createRepeated() => $pb.PbList<GetNoteResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNoteResponse>(create);
  static GetNoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Note get note => $_getN(0);
  @$pb.TagNumber(1)
  set note(Note v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => clearField(1);
  @$pb.TagNumber(1)
  Note ensureNote() => $_ensure(0);
}

class UpdateNoteRequest extends $pb.GeneratedMessage {
  factory UpdateNoteRequest({
    CreateNoteData? data,
    $core.String? id,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UpdateNoteRequest._() : super();
  factory UpdateNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<CreateNoteData>(1, _omitFieldNames ? '' : 'data', subBuilder: CreateNoteData.create)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNoteRequest clone() => UpdateNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNoteRequest copyWith(void Function(UpdateNoteRequest) updates) => super.copyWith((message) => updates(message as UpdateNoteRequest)) as UpdateNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNoteRequest create() => UpdateNoteRequest._();
  UpdateNoteRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNoteRequest> createRepeated() => $pb.PbList<UpdateNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNoteRequest>(create);
  static UpdateNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CreateNoteData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(CreateNoteData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  CreateNoteData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class UpdateNoteResponse extends $pb.GeneratedMessage {
  factory UpdateNoteResponse({
    Note? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note = note;
    }
    return $result;
  }
  UpdateNoteResponse._() : super();
  factory UpdateNoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateNoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<Note>(1, _omitFieldNames ? '' : 'note', subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNoteResponse clone() => UpdateNoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNoteResponse copyWith(void Function(UpdateNoteResponse) updates) => super.copyWith((message) => updates(message as UpdateNoteResponse)) as UpdateNoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNoteResponse create() => UpdateNoteResponse._();
  UpdateNoteResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateNoteResponse> createRepeated() => $pb.PbList<UpdateNoteResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateNoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNoteResponse>(create);
  static UpdateNoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Note get note => $_getN(0);
  @$pb.TagNumber(1)
  set note(Note v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => clearField(1);
  @$pb.TagNumber(1)
  Note ensureNote() => $_ensure(0);
}

class DeleteNoteRequest extends $pb.GeneratedMessage {
  factory DeleteNoteRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteNoteRequest._() : super();
  factory DeleteNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteNoteRequest clone() => DeleteNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteNoteRequest copyWith(void Function(DeleteNoteRequest) updates) => super.copyWith((message) => updates(message as DeleteNoteRequest)) as DeleteNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNoteRequest create() => DeleteNoteRequest._();
  DeleteNoteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNoteRequest> createRepeated() => $pb.PbList<DeleteNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNoteRequest>(create);
  static DeleteNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteNoteResponse extends $pb.GeneratedMessage {
  factory DeleteNoteResponse() => create();
  DeleteNoteResponse._() : super();
  factory DeleteNoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteNoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteNoteResponse clone() => DeleteNoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteNoteResponse copyWith(void Function(DeleteNoteResponse) updates) => super.copyWith((message) => updates(message as DeleteNoteResponse)) as DeleteNoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNoteResponse create() => DeleteNoteResponse._();
  DeleteNoteResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteNoteResponse> createRepeated() => $pb.PbList<DeleteNoteResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteNoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNoteResponse>(create);
  static DeleteNoteResponse? _defaultInstance;
}

class ListNotesRequest extends $pb.GeneratedMessage {
  factory ListNotesRequest({
    $core.String? courseId,
  }) {
    final $result = create();
    if (courseId != null) {
      $result.courseId = courseId;
    }
    return $result;
  }
  ListNotesRequest._() : super();
  factory ListNotesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNotesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListNotesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'courseId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListNotesRequest clone() => ListNotesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListNotesRequest copyWith(void Function(ListNotesRequest) updates) => super.copyWith((message) => updates(message as ListNotesRequest)) as ListNotesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListNotesRequest create() => ListNotesRequest._();
  ListNotesRequest createEmptyInstance() => create();
  static $pb.PbList<ListNotesRequest> createRepeated() => $pb.PbList<ListNotesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListNotesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNotesRequest>(create);
  static ListNotesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get courseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set courseId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourseId() => clearField(1);
}

class ListNotesResponse extends $pb.GeneratedMessage {
  factory ListNotesResponse({
    $core.Iterable<Note>? notes,
  }) {
    final $result = create();
    if (notes != null) {
      $result.notes.addAll(notes);
    }
    return $result;
  }
  ListNotesResponse._() : super();
  factory ListNotesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNotesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListNotesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..pc<Note>(1, _omitFieldNames ? '' : 'notes', $pb.PbFieldType.PM, subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListNotesResponse clone() => ListNotesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListNotesResponse copyWith(void Function(ListNotesResponse) updates) => super.copyWith((message) => updates(message as ListNotesResponse)) as ListNotesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListNotesResponse create() => ListNotesResponse._();
  ListNotesResponse createEmptyInstance() => create();
  static $pb.PbList<ListNotesResponse> createRepeated() => $pb.PbList<ListNotesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListNotesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNotesResponse>(create);
  static ListNotesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Note> get notes => $_getList(0);
}

class File extends $pb.GeneratedMessage {
  factory File({
    $core.String? id,
    $core.String? courseId,
    $core.List<$core.int>? content,
    $core.String? filename,
    User? publisher,
    $1.Timestamp? createdAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (courseId != null) {
      $result.courseId = courseId;
    }
    if (content != null) {
      $result.content = content;
    }
    if (filename != null) {
      $result.filename = filename;
    }
    if (publisher != null) {
      $result.publisher = publisher;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  File._() : super();
  factory File.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory File.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'File', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'courseId')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'filename')
    ..aOM<User>(5, _omitFieldNames ? '' : 'publisher', subBuilder: User.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  File clone() => File()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  File copyWith(void Function(File) updates) => super.copyWith((message) => updates(message as File)) as File;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get courseId => $_getSZ(1);
  @$pb.TagNumber(2)
  set courseId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCourseId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCourseId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get content => $_getN(2);
  @$pb.TagNumber(3)
  set content($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get filename => $_getSZ(3);
  @$pb.TagNumber(4)
  set filename($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilename() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilename() => clearField(4);

  @$pb.TagNumber(5)
  User get publisher => $_getN(4);
  @$pb.TagNumber(5)
  set publisher(User v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublisher() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublisher() => clearField(5);
  @$pb.TagNumber(5)
  User ensurePublisher() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureCreatedAt() => $_ensure(5);
}

class CreateFileData extends $pb.GeneratedMessage {
  factory CreateFileData({
    $core.String? courseId,
    $core.List<$core.int>? content,
    $core.String? filename,
    $core.String? userId,
  }) {
    final $result = create();
    if (courseId != null) {
      $result.courseId = courseId;
    }
    if (content != null) {
      $result.content = content;
    }
    if (filename != null) {
      $result.filename = filename;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  CreateFileData._() : super();
  factory CreateFileData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFileData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateFileData', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'courseId')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'filename')
    ..aOS(4, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFileData clone() => CreateFileData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFileData copyWith(void Function(CreateFileData) updates) => super.copyWith((message) => updates(message as CreateFileData)) as CreateFileData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateFileData create() => CreateFileData._();
  CreateFileData createEmptyInstance() => create();
  static $pb.PbList<CreateFileData> createRepeated() => $pb.PbList<CreateFileData>();
  @$core.pragma('dart2js:noInline')
  static CreateFileData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFileData>(create);
  static CreateFileData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get courseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set courseId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourseId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get filename => $_getSZ(2);
  @$pb.TagNumber(3)
  set filename($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilename() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilename() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);
}

class CreateFileRequest extends $pb.GeneratedMessage {
  factory CreateFileRequest({
    CreateFileData? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CreateFileRequest._() : super();
  factory CreateFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<CreateFileData>(1, _omitFieldNames ? '' : 'data', subBuilder: CreateFileData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFileRequest clone() => CreateFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFileRequest copyWith(void Function(CreateFileRequest) updates) => super.copyWith((message) => updates(message as CreateFileRequest)) as CreateFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateFileRequest create() => CreateFileRequest._();
  CreateFileRequest createEmptyInstance() => create();
  static $pb.PbList<CreateFileRequest> createRepeated() => $pb.PbList<CreateFileRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFileRequest>(create);
  static CreateFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CreateFileData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(CreateFileData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  CreateFileData ensureData() => $_ensure(0);
}

class CreateFileResponse extends $pb.GeneratedMessage {
  factory CreateFileResponse({
    File? file,
  }) {
    final $result = create();
    if (file != null) {
      $result.file = file;
    }
    return $result;
  }
  CreateFileResponse._() : super();
  factory CreateFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<File>(1, _omitFieldNames ? '' : 'file', subBuilder: File.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFileResponse clone() => CreateFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFileResponse copyWith(void Function(CreateFileResponse) updates) => super.copyWith((message) => updates(message as CreateFileResponse)) as CreateFileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateFileResponse create() => CreateFileResponse._();
  CreateFileResponse createEmptyInstance() => create();
  static $pb.PbList<CreateFileResponse> createRepeated() => $pb.PbList<CreateFileResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFileResponse>(create);
  static CreateFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  File get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(File v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
  @$pb.TagNumber(1)
  File ensureFile() => $_ensure(0);
}

class GetFileRequest extends $pb.GeneratedMessage {
  factory GetFileRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetFileRequest._() : super();
  factory GetFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFileRequest clone() => GetFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFileRequest copyWith(void Function(GetFileRequest) updates) => super.copyWith((message) => updates(message as GetFileRequest)) as GetFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileRequest create() => GetFileRequest._();
  GetFileRequest createEmptyInstance() => create();
  static $pb.PbList<GetFileRequest> createRepeated() => $pb.PbList<GetFileRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFileRequest>(create);
  static GetFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetFileResponse extends $pb.GeneratedMessage {
  factory GetFileResponse({
    File? file,
  }) {
    final $result = create();
    if (file != null) {
      $result.file = file;
    }
    return $result;
  }
  GetFileResponse._() : super();
  factory GetFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOM<File>(1, _omitFieldNames ? '' : 'file', subBuilder: File.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFileResponse clone() => GetFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFileResponse copyWith(void Function(GetFileResponse) updates) => super.copyWith((message) => updates(message as GetFileResponse)) as GetFileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileResponse create() => GetFileResponse._();
  GetFileResponse createEmptyInstance() => create();
  static $pb.PbList<GetFileResponse> createRepeated() => $pb.PbList<GetFileResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFileResponse>(create);
  static GetFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  File get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(File v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
  @$pb.TagNumber(1)
  File ensureFile() => $_ensure(0);
}

class DeleteFileRequest extends $pb.GeneratedMessage {
  factory DeleteFileRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteFileRequest._() : super();
  factory DeleteFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFileRequest clone() => DeleteFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFileRequest copyWith(void Function(DeleteFileRequest) updates) => super.copyWith((message) => updates(message as DeleteFileRequest)) as DeleteFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFileRequest create() => DeleteFileRequest._();
  DeleteFileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteFileRequest> createRepeated() => $pb.PbList<DeleteFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFileRequest>(create);
  static DeleteFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteFileResponse extends $pb.GeneratedMessage {
  factory DeleteFileResponse() => create();
  DeleteFileResponse._() : super();
  factory DeleteFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFileResponse clone() => DeleteFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFileResponse copyWith(void Function(DeleteFileResponse) updates) => super.copyWith((message) => updates(message as DeleteFileResponse)) as DeleteFileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFileResponse create() => DeleteFileResponse._();
  DeleteFileResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteFileResponse> createRepeated() => $pb.PbList<DeleteFileResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFileResponse>(create);
  static DeleteFileResponse? _defaultInstance;
}

class ListFilesRequest extends $pb.GeneratedMessage {
  factory ListFilesRequest({
    $core.String? courseId,
  }) {
    final $result = create();
    if (courseId != null) {
      $result.courseId = courseId;
    }
    return $result;
  }
  ListFilesRequest._() : super();
  factory ListFilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFilesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'courseId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFilesRequest clone() => ListFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFilesRequest copyWith(void Function(ListFilesRequest) updates) => super.copyWith((message) => updates(message as ListFilesRequest)) as ListFilesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFilesRequest create() => ListFilesRequest._();
  ListFilesRequest createEmptyInstance() => create();
  static $pb.PbList<ListFilesRequest> createRepeated() => $pb.PbList<ListFilesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListFilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFilesRequest>(create);
  static ListFilesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get courseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set courseId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourseId() => clearField(1);
}

class ListFilesResponse extends $pb.GeneratedMessage {
  factory ListFilesResponse({
    $core.Iterable<File>? files,
  }) {
    final $result = create();
    if (files != null) {
      $result.files.addAll(files);
    }
    return $result;
  }
  ListFilesResponse._() : super();
  factory ListFilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFilesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booky'), createEmptyInstance: create)
    ..pc<File>(1, _omitFieldNames ? '' : 'files', $pb.PbFieldType.PM, subBuilder: File.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFilesResponse clone() => ListFilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFilesResponse copyWith(void Function(ListFilesResponse) updates) => super.copyWith((message) => updates(message as ListFilesResponse)) as ListFilesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFilesResponse create() => ListFilesResponse._();
  ListFilesResponse createEmptyInstance() => create();
  static $pb.PbList<ListFilesResponse> createRepeated() => $pb.PbList<ListFilesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListFilesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFilesResponse>(create);
  static ListFilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<File> get files => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
