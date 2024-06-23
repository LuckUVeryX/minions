import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    required DateTime start,
    required DateTime end,
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
      start: start,
      end: end,
      lunchBreak: state.lunchBreak,
    );
  }
}

@freezed
class MinionHoursOutput with _$MinionHoursOutput {
  const factory MinionHoursOutput({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required String facilityId,
    required DateTime start,
    required DateTime end,
    required bool lunchBreak,
    @JsonKey(name: 'Facilities') required Facility facility,
  }) = _MinionHoursOutput;

  const MinionHoursOutput._();

  factory MinionHoursOutput.fromJson(Map<String, dynamic> json) =>
      _$MinionHoursOutputFromJson(json);
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
