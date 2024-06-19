// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minion_hours_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MinionHoursInput _$MinionHoursInputFromJson(Map<String, dynamic> json) {
  return _MinionHoursInput.fromJson(json);
}

/// @nodoc
mixin _$MinionHoursInput {
  Facility? get facility => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

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
  $Res call({Facility? facility, DateTime? start, DateTime? end});

  $FacilityCopyWith<$Res>? get facility;
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
    Object? facility = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$MinionHoursInputImplCopyWith<$Res>
    implements $MinionHoursInputCopyWith<$Res> {
  factory _$$MinionHoursInputImplCopyWith(_$MinionHoursInputImpl value,
          $Res Function(_$MinionHoursInputImpl) then) =
      __$$MinionHoursInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Facility? facility, DateTime? start, DateTime? end});

  @override
  $FacilityCopyWith<$Res>? get facility;
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
    Object? facility = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$MinionHoursInputImpl(
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinionHoursInputImpl extends _MinionHoursInput {
  const _$MinionHoursInputImpl({this.facility, this.start, this.end})
      : super._();

  factory _$MinionHoursInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinionHoursInputImplFromJson(json);

  @override
  final Facility? facility;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'MinionHoursInput(facility: $facility, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinionHoursInputImpl &&
            (identical(other.facility, facility) ||
                other.facility == facility) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, facility, start, end);

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
      {final Facility? facility,
      final DateTime? start,
      final DateTime? end}) = _$MinionHoursInputImpl;
  const _MinionHoursInput._() : super._();

  factory _MinionHoursInput.fromJson(Map<String, dynamic> json) =
      _$MinionHoursInputImpl.fromJson;

  @override
  Facility? get facility;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$MinionHoursInputImplCopyWith<_$MinionHoursInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
