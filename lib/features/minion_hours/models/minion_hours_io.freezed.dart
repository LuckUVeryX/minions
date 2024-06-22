// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minion_hours_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MinionHoursState {
  String? get id => throw _privateConstructorUsedError;
  Facility? get facility => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  TimeOfDay? get startTime => throw _privateConstructorUsedError;
  TimeOfDay? get endTime => throw _privateConstructorUsedError;
  bool get lunchBreak => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinionHoursStateCopyWith<MinionHoursState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinionHoursStateCopyWith<$Res> {
  factory $MinionHoursStateCopyWith(
          MinionHoursState value, $Res Function(MinionHoursState) then) =
      _$MinionHoursStateCopyWithImpl<$Res, MinionHoursState>;
  @useResult
  $Res call(
      {String? id,
      Facility? facility,
      DateTime? date,
      TimeOfDay? startTime,
      TimeOfDay? endTime,
      bool lunchBreak});

  $FacilityCopyWith<$Res>? get facility;
}

/// @nodoc
class _$MinionHoursStateCopyWithImpl<$Res, $Val extends MinionHoursState>
    implements $MinionHoursStateCopyWith<$Res> {
  _$MinionHoursStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? facility = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? lunchBreak = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityCopyWith<$Res>? get facility {
    if (_value.facility == null) {
      return null;
    }

    return $FacilityCopyWith<$Res>(_value.facility!, (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MinionHoursStateImplCopyWith<$Res>
    implements $MinionHoursStateCopyWith<$Res> {
  factory _$$MinionHoursStateImplCopyWith(_$MinionHoursStateImpl value,
          $Res Function(_$MinionHoursStateImpl) then) =
      __$$MinionHoursStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Facility? facility,
      DateTime? date,
      TimeOfDay? startTime,
      TimeOfDay? endTime,
      bool lunchBreak});

  @override
  $FacilityCopyWith<$Res>? get facility;
}

/// @nodoc
class __$$MinionHoursStateImplCopyWithImpl<$Res>
    extends _$MinionHoursStateCopyWithImpl<$Res, _$MinionHoursStateImpl>
    implements _$$MinionHoursStateImplCopyWith<$Res> {
  __$$MinionHoursStateImplCopyWithImpl(_$MinionHoursStateImpl _value,
      $Res Function(_$MinionHoursStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? facility = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? lunchBreak = null,
  }) {
    return _then(_$MinionHoursStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MinionHoursStateImpl extends _MinionHoursState {
  const _$MinionHoursStateImpl(
      {this.id,
      this.facility,
      this.date,
      this.startTime,
      this.endTime,
      this.lunchBreak = false})
      : super._();

  @override
  final String? id;
  @override
  final Facility? facility;
  @override
  final DateTime? date;
  @override
  final TimeOfDay? startTime;
  @override
  final TimeOfDay? endTime;
  @override
  @JsonKey()
  final bool lunchBreak;

  @override
  String toString() {
    return 'MinionHoursState(id: $id, facility: $facility, date: $date, startTime: $startTime, endTime: $endTime, lunchBreak: $lunchBreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.facility, facility) ||
                other.facility == facility) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.lunchBreak, lunchBreak) ||
                other.lunchBreak == lunchBreak));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, facility, date, startTime, endTime, lunchBreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinionHoursStateImplCopyWith<_$MinionHoursStateImpl> get copyWith =>
      __$$MinionHoursStateImplCopyWithImpl<_$MinionHoursStateImpl>(
          this, _$identity);
}

abstract class _MinionHoursState extends MinionHoursState {
  const factory _MinionHoursState(
      {final String? id,
      final Facility? facility,
      final DateTime? date,
      final TimeOfDay? startTime,
      final TimeOfDay? endTime,
      final bool lunchBreak}) = _$MinionHoursStateImpl;
  const _MinionHoursState._() : super._();

  @override
  String? get id;
  @override
  Facility? get facility;
  @override
  DateTime? get date;
  @override
  TimeOfDay? get startTime;
  @override
  TimeOfDay? get endTime;
  @override
  bool get lunchBreak;
  @override
  @JsonKey(ignore: true)
  _$$MinionHoursStateImplCopyWith<_$MinionHoursStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinionHoursInput _$MinionHoursInputFromJson(Map<String, dynamic> json) {
  return _MinionHoursInput.fromJson(json);
}

/// @nodoc
mixin _$MinionHoursInput {
  String get userId => throw _privateConstructorUsedError;
  String get facilityId => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  bool get lunchBreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinionHoursInputCopyWith<MinionHoursInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinionHoursInputCopyWith<$Res> {
  factory $MinionHoursInputCopyWith(
          MinionHoursInput value, $Res Function(MinionHoursInput) then) =
      _$MinionHoursInputCopyWithImpl<$Res, MinionHoursInput>;
  @useResult
  $Res call(
      {String userId,
      String facilityId,
      DateTime start,
      DateTime end,
      bool lunchBreak});
}

/// @nodoc
class _$MinionHoursInputCopyWithImpl<$Res, $Val extends MinionHoursInput>
    implements $MinionHoursInputCopyWith<$Res> {
  _$MinionHoursInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? facilityId = null,
    Object? start = null,
    Object? end = null,
    Object? lunchBreak = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      facilityId: null == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinionHoursInputImplCopyWith<$Res>
    implements $MinionHoursInputCopyWith<$Res> {
  factory _$$MinionHoursInputImplCopyWith(_$MinionHoursInputImpl value,
          $Res Function(_$MinionHoursInputImpl) then) =
      __$$MinionHoursInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String facilityId,
      DateTime start,
      DateTime end,
      bool lunchBreak});
}

/// @nodoc
class __$$MinionHoursInputImplCopyWithImpl<$Res>
    extends _$MinionHoursInputCopyWithImpl<$Res, _$MinionHoursInputImpl>
    implements _$$MinionHoursInputImplCopyWith<$Res> {
  __$$MinionHoursInputImplCopyWithImpl(_$MinionHoursInputImpl _value,
      $Res Function(_$MinionHoursInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? facilityId = null,
    Object? start = null,
    Object? end = null,
    Object? lunchBreak = null,
  }) {
    return _then(_$MinionHoursInputImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      facilityId: null == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinionHoursInputImpl extends _MinionHoursInput {
  const _$MinionHoursInputImpl(
      {required this.userId,
      required this.facilityId,
      required this.start,
      required this.end,
      required this.lunchBreak})
      : super._();

  factory _$MinionHoursInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinionHoursInputImplFromJson(json);

  @override
  final String userId;
  @override
  final String facilityId;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final bool lunchBreak;

  @override
  String toString() {
    return 'MinionHoursInput(userId: $userId, facilityId: $facilityId, start: $start, end: $end, lunchBreak: $lunchBreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.lunchBreak, lunchBreak) ||
                other.lunchBreak == lunchBreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, facilityId, start, end, lunchBreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinionHoursInputImplCopyWith<_$MinionHoursInputImpl> get copyWith =>
      __$$MinionHoursInputImplCopyWithImpl<_$MinionHoursInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinionHoursInputImplToJson(
      this,
    );
  }
}

abstract class _MinionHoursInput extends MinionHoursInput {
  const factory _MinionHoursInput(
      {required final String userId,
      required final String facilityId,
      required final DateTime start,
      required final DateTime end,
      required final bool lunchBreak}) = _$MinionHoursInputImpl;
  const _MinionHoursInput._() : super._();

  factory _MinionHoursInput.fromJson(Map<String, dynamic> json) =
      _$MinionHoursInputImpl.fromJson;

  @override
  String get userId;
  @override
  String get facilityId;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  bool get lunchBreak;
  @override
  @JsonKey(ignore: true)
  _$$MinionHoursInputImplCopyWith<_$MinionHoursInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinionHoursOutput _$MinionHoursOutputFromJson(Map<String, dynamic> json) {
  return _MinionHoursOutput.fromJson(json);
}

/// @nodoc
mixin _$MinionHoursOutput {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get facilityId => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  bool get lunchBreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinionHoursOutputCopyWith<MinionHoursOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinionHoursOutputCopyWith<$Res> {
  factory $MinionHoursOutputCopyWith(
          MinionHoursOutput value, $Res Function(MinionHoursOutput) then) =
      _$MinionHoursOutputCopyWithImpl<$Res, MinionHoursOutput>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      String facilityId,
      DateTime start,
      DateTime end,
      bool lunchBreak});
}

/// @nodoc
class _$MinionHoursOutputCopyWithImpl<$Res, $Val extends MinionHoursOutput>
    implements $MinionHoursOutputCopyWith<$Res> {
  _$MinionHoursOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? facilityId = null,
    Object? start = null,
    Object? end = null,
    Object? lunchBreak = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      facilityId: null == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinionHoursOutputImplCopyWith<$Res>
    implements $MinionHoursOutputCopyWith<$Res> {
  factory _$$MinionHoursOutputImplCopyWith(_$MinionHoursOutputImpl value,
          $Res Function(_$MinionHoursOutputImpl) then) =
      __$$MinionHoursOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      String facilityId,
      DateTime start,
      DateTime end,
      bool lunchBreak});
}

/// @nodoc
class __$$MinionHoursOutputImplCopyWithImpl<$Res>
    extends _$MinionHoursOutputCopyWithImpl<$Res, _$MinionHoursOutputImpl>
    implements _$$MinionHoursOutputImplCopyWith<$Res> {
  __$$MinionHoursOutputImplCopyWithImpl(_$MinionHoursOutputImpl _value,
      $Res Function(_$MinionHoursOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? facilityId = null,
    Object? start = null,
    Object? end = null,
    Object? lunchBreak = null,
  }) {
    return _then(_$MinionHoursOutputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      facilityId: null == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinionHoursOutputImpl extends _MinionHoursOutput {
  const _$MinionHoursOutputImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.userId,
      required this.facilityId,
      required this.start,
      required this.end,
      required this.lunchBreak})
      : super._();

  factory _$MinionHoursOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinionHoursOutputImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String userId;
  @override
  final String facilityId;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final bool lunchBreak;

  @override
  String toString() {
    return 'MinionHoursOutput(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, facilityId: $facilityId, start: $start, end: $end, lunchBreak: $lunchBreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursOutputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.lunchBreak, lunchBreak) ||
                other.lunchBreak == lunchBreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, userId,
      facilityId, start, end, lunchBreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinionHoursOutputImplCopyWith<_$MinionHoursOutputImpl> get copyWith =>
      __$$MinionHoursOutputImplCopyWithImpl<_$MinionHoursOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinionHoursOutputImplToJson(
      this,
    );
  }
}

abstract class _MinionHoursOutput extends MinionHoursOutput {
  const factory _MinionHoursOutput(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String userId,
      required final String facilityId,
      required final DateTime start,
      required final DateTime end,
      required final bool lunchBreak}) = _$MinionHoursOutputImpl;
  const _MinionHoursOutput._() : super._();

  factory _MinionHoursOutput.fromJson(Map<String, dynamic> json) =
      _$MinionHoursOutputImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get userId;
  @override
  String get facilityId;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  bool get lunchBreak;
  @override
  @JsonKey(ignore: true)
  _$$MinionHoursOutputImplCopyWith<_$MinionHoursOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
