import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minions/app/utils/time_of_day_extensions.dart';
import 'package:minions/features/facilities/facilities.dart';

part 'minion_hours_input.freezed.dart';

@freezed
class MinionHoursInput with _$MinionHoursInput {
  const factory MinionHoursInput({
    Facility? facility,
    DateTime? date,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    @Default(false) bool lunchBreak,
  }) = _MinionHoursInput;

  const MinionHoursInput._();

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
