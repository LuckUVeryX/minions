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
  int? get id => throw _privateConstructorUsedError;
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
      {int? id,
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
              as int?,
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
      {int? id,
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
              as int?,
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
  final int? id;
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
      {final int? id,
      final Facility? facility,
      final DateTime? date,
      final TimeOfDay? startTime,
      final TimeOfDay? endTime,
      final bool lunchBreak}) = _$MinionHoursStateImpl;
  const _MinionHoursState._() : super._();

  @override
  int? get id;
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
  @_MinionHoursPeriodConverter()
  MinionHoursPeriod get period => throw _privateConstructorUsedError;
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
      @_MinionHoursPeriodConverter() MinionHoursPeriod period,
      bool lunchBreak});

  $MinionHoursPeriodCopyWith<$Res> get period;
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
    Object? period = null,
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
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as MinionHoursPeriod,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MinionHoursPeriodCopyWith<$Res> get period {
    return $MinionHoursPeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
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
      @_MinionHoursPeriodConverter() MinionHoursPeriod period,
      bool lunchBreak});

  @override
  $MinionHoursPeriodCopyWith<$Res> get period;
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
    Object? period = null,
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
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as MinionHoursPeriod,
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
      @_MinionHoursPeriodConverter() required this.period,
      required this.lunchBreak})
      : super._();

  factory _$MinionHoursInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinionHoursInputImplFromJson(json);

  @override
  final String userId;
  @override
  final String facilityId;
  @override
  @_MinionHoursPeriodConverter()
  final MinionHoursPeriod period;
  @override
  final bool lunchBreak;

  @override
  String toString() {
    return 'MinionHoursInput(userId: $userId, facilityId: $facilityId, period: $period, lunchBreak: $lunchBreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.lunchBreak, lunchBreak) ||
                other.lunchBreak == lunchBreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, facilityId, period, lunchBreak);

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
      @_MinionHoursPeriodConverter() required final MinionHoursPeriod period,
      required final bool lunchBreak}) = _$MinionHoursInputImpl;
  const _MinionHoursInput._() : super._();

  factory _MinionHoursInput.fromJson(Map<String, dynamic> json) =
      _$MinionHoursInputImpl.fromJson;

  @override
  String get userId;
  @override
  String get facilityId;
  @override
  @_MinionHoursPeriodConverter()
  MinionHoursPeriod get period;
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
  int get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get facilityId => throw _privateConstructorUsedError;
  bool get lunchBreak => throw _privateConstructorUsedError;
  @_MinionHoursPeriodConverter()
  MinionHoursPeriod get period => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'Facilities')
  Facility get facility => throw _privateConstructorUsedError;

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
      {int id,
      String userId,
      String facilityId,
      bool lunchBreak,
      @_MinionHoursPeriodConverter() MinionHoursPeriod period,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'Facilities') Facility facility});

  $MinionHoursPeriodCopyWith<$Res> get period;
  $FacilityCopyWith<$Res> get facility;
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
    Object? userId = null,
    Object? facilityId = null,
    Object? lunchBreak = null,
    Object? period = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? facility = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      facilityId: null == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as MinionHoursPeriod,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MinionHoursPeriodCopyWith<$Res> get period {
    return $MinionHoursPeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityCopyWith<$Res> get facility {
    return $FacilityCopyWith<$Res>(_value.facility, (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
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
      {int id,
      String userId,
      String facilityId,
      bool lunchBreak,
      @_MinionHoursPeriodConverter() MinionHoursPeriod period,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'Facilities') Facility facility});

  @override
  $MinionHoursPeriodCopyWith<$Res> get period;
  @override
  $FacilityCopyWith<$Res> get facility;
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
    Object? userId = null,
    Object? facilityId = null,
    Object? lunchBreak = null,
    Object? period = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? facility = null,
  }) {
    return _then(_$MinionHoursOutputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      facilityId: null == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBreak: null == lunchBreak
          ? _value.lunchBreak
          : lunchBreak // ignore: cast_nullable_to_non_nullable
              as bool,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as MinionHoursPeriod,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinionHoursOutputImpl extends _MinionHoursOutput {
  const _$MinionHoursOutputImpl(
      {required this.id,
      required this.userId,
      required this.facilityId,
      required this.lunchBreak,
      @_MinionHoursPeriodConverter() required this.period,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: 'Facilities') required this.facility})
      : super._();

  factory _$MinionHoursOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinionHoursOutputImplFromJson(json);

  @override
  final int id;
  @override
  final String userId;
  @override
  final String facilityId;
  @override
  final bool lunchBreak;
  @override
  @_MinionHoursPeriodConverter()
  final MinionHoursPeriod period;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'Facilities')
  final Facility facility;

  @override
  String toString() {
    return 'MinionHoursOutput(id: $id, userId: $userId, facilityId: $facilityId, lunchBreak: $lunchBreak, period: $period, createdAt: $createdAt, updatedAt: $updatedAt, facility: $facility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursOutputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.lunchBreak, lunchBreak) ||
                other.lunchBreak == lunchBreak) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.facility, facility) ||
                other.facility == facility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, facilityId,
      lunchBreak, period, createdAt, updatedAt, facility);

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
      {required final int id,
      required final String userId,
      required final String facilityId,
      required final bool lunchBreak,
      @_MinionHoursPeriodConverter() required final MinionHoursPeriod period,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: 'Facilities')
      required final Facility facility}) = _$MinionHoursOutputImpl;
  const _MinionHoursOutput._() : super._();

  factory _MinionHoursOutput.fromJson(Map<String, dynamic> json) =
      _$MinionHoursOutputImpl.fromJson;

  @override
  int get id;
  @override
  String get userId;
  @override
  String get facilityId;
  @override
  bool get lunchBreak;
  @override
  @_MinionHoursPeriodConverter()
  MinionHoursPeriod get period;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'Facilities')
  Facility get facility;
  @override
  @JsonKey(ignore: true)
  _$$MinionHoursOutputImplCopyWith<_$MinionHoursOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinionHoursPeriod _$MinionHoursPeriodFromJson(Map<String, dynamic> json) {
  return _MinionHoursPeriod.fromJson(json);
}

/// @nodoc
mixin _$MinionHoursPeriod {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinionHoursPeriodCopyWith<MinionHoursPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinionHoursPeriodCopyWith<$Res> {
  factory $MinionHoursPeriodCopyWith(
          MinionHoursPeriod value, $Res Function(MinionHoursPeriod) then) =
      _$MinionHoursPeriodCopyWithImpl<$Res, MinionHoursPeriod>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$MinionHoursPeriodCopyWithImpl<$Res, $Val extends MinionHoursPeriod>
    implements $MinionHoursPeriodCopyWith<$Res> {
  _$MinionHoursPeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinionHoursPeriodImplCopyWith<$Res>
    implements $MinionHoursPeriodCopyWith<$Res> {
  factory _$$MinionHoursPeriodImplCopyWith(_$MinionHoursPeriodImpl value,
          $Res Function(_$MinionHoursPeriodImpl) then) =
      __$$MinionHoursPeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$MinionHoursPeriodImplCopyWithImpl<$Res>
    extends _$MinionHoursPeriodCopyWithImpl<$Res, _$MinionHoursPeriodImpl>
    implements _$$MinionHoursPeriodImplCopyWith<$Res> {
  __$$MinionHoursPeriodImplCopyWithImpl(_$MinionHoursPeriodImpl _value,
      $Res Function(_$MinionHoursPeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$MinionHoursPeriodImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinionHoursPeriodImpl extends _MinionHoursPeriod {
  const _$MinionHoursPeriodImpl({required this.start, required this.end})
      : super._();

  factory _$MinionHoursPeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinionHoursPeriodImplFromJson(json);

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'MinionHoursPeriod(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursPeriodImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinionHoursPeriodImplCopyWith<_$MinionHoursPeriodImpl> get copyWith =>
      __$$MinionHoursPeriodImplCopyWithImpl<_$MinionHoursPeriodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinionHoursPeriodImplToJson(
      this,
    );
  }
}

abstract class _MinionHoursPeriod extends MinionHoursPeriod {
  const factory _MinionHoursPeriod(
      {required final DateTime start,
      required final DateTime end}) = _$MinionHoursPeriodImpl;
  const _MinionHoursPeriod._() : super._();

  factory _MinionHoursPeriod.fromJson(Map<String, dynamic> json) =
      _$MinionHoursPeriodImpl.fromJson;

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$MinionHoursPeriodImplCopyWith<_$MinionHoursPeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
