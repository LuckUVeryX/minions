import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/facilities/facilities.dart';

part 'minion_hours_io.freezed.dart';
part 'minion_hours_io.g.dart';

@freezed
class MinionHoursState with _$MinionHoursState {
  const factory MinionHoursState({
    int? id,
    Facility? facility,
    DateTime? date,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    @Default(false) bool lunchBreak,
  }) = _MinionHoursState;

  const MinionHoursState._();

  bool isValid() {
    final start = startTime;
    final end = endTime;

    return facility != null &&
        date != null &&
        start != null &&
        end != null &&
        start.isBefore(end);
  }
}

@freezed
class MinionHoursInput with _$MinionHoursInput {
  const factory MinionHoursInput({
    required String userId,
    required String facilityId,
    @_MinionHoursPeriodConverter() required MinionHoursPeriod period,
    required bool lunchBreak,
  }) = _MinionHoursInput;

  const MinionHoursInput._();

  factory MinionHoursInput.fromJson(Map<String, dynamic> json) =>
      _$MinionHoursInputFromJson(json);

  factory MinionHoursInput.fromState({
    required MinionHoursState state,
    required String userId,
  }) {
    assert(state.isValid(), 'Invalid MinonHoursState');
    final date = state.date!;
    final start = state.startTime!.toDateTime(date);
    final end = state.endTime!.toDateTime(date);

    return MinionHoursInput(
      userId: userId,
      facilityId: state.facility!.id,
      period: MinionHoursPeriod(start: start, end: end),
      lunchBreak: state.lunchBreak,
    );
  }
}

@freezed
class MinionHoursOutput with _$MinionHoursOutput {
  const factory MinionHoursOutput({
    required int id,
    required String userId,
    required String facilityId,
    required bool lunchBreak,
    @_MinionHoursPeriodConverter() required MinionHoursPeriod period,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: 'Facilities') required Facility facility,
  }) = _MinionHoursOutput;

  const MinionHoursOutput._();

  factory MinionHoursOutput.fromJson(Map<String, dynamic> json) =>
      _$MinionHoursOutputFromJson(json);

  List<String> get tableValues {
    return [
      facility.shortName,
      DateFormat('dd/MM/yy').format(period.start),
      '${DateFormat.Hm().format(period.start)} - ${DateFormat.Hm().format(period.end)}',
      duration.toHm(),
    ];
  }

  Duration get duration {
    return period.end.difference(period.start) -
        Duration(hours: lunchBreak ? 1 : 0);
  }

  MinionHoursState toState() {
    return MinionHoursState(
      id: id,
      facility: facility,
      date: period.start,
      startTime: TimeOfDay.fromDateTime(period.start),
      endTime: TimeOfDay.fromDateTime(period.end),
      lunchBreak: lunchBreak,
    );
  }

  MinionHoursOutput merge(MinionHoursState state) {
    assert(state.isValid(), 'Invalid MinonHoursState');

    final date = state.date!;
    final start = state.startTime!.toDateTime(date);
    final end = state.endTime!.toDateTime(date);
    final facility = state.facility!;

    return copyWith(
      facilityId: facility.id,
      facility: facility,
      period: MinionHoursPeriod(start: start, end: end),
      lunchBreak: state.lunchBreak,
    );
  }
}

@freezed
class MinionHoursPeriod with _$MinionHoursPeriod {
  const factory MinionHoursPeriod({
    required DateTime start,
    required DateTime end,
  }) = _MinionHoursPeriod;

  const MinionHoursPeriod._();

  factory MinionHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$MinionHoursPeriodFromJson(json);
}

/// Converter for Postgres's `tstzrange` type
///
/// ie:
///
/// ```dart
/// '["2024-06-26 21:45:00+00","2024-06-26 22:45:00+00")'
/// ```
class _MinionHoursPeriodConverter
    implements JsonConverter<MinionHoursPeriod, String> {
  const _MinionHoursPeriodConverter();

  @override
  MinionHoursPeriod fromJson(String json) {
    final [start, end] = json
        .replaceAll('"', '')
        .replaceAll('[', '')
        .replaceAll(')', '')
        .split(',');

    return MinionHoursPeriod(
      start: DateTime.parse(start),
      end: DateTime.parse(end),
    );
  }

  @override
  String toJson(MinionHoursPeriod object) {
    return '["${object.start.toIso8601String()}","${object.end.toIso8601String()}")';
  }
}

extension on TimeOfDay {
  DateTime toDateTime(DateTime date) {
    return DateTime(
      date.year,
      date.month,
      date.day,
      hour,
      minute,
    );
  }
}
