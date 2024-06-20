import 'package:flutter/material.dart';
import 'package:minions/app/utils/time_of_day_extensions.dart';
import 'package:minions/features/facilities/facilities.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minion_hours_controller.g.dart';

@riverpod
class MinionHoursController extends _$MinionHoursController {
  @override
  MinionHoursInput build() {
    return const MinionHoursInput();
  }

  void onFacilityChanged(Facility value) {
    state = state.copyWith(facility: value);
  }

  void onDateChanged(DateTime value) {
    state = state.copyWith(date: value);
  }

  void onStartTimeChanged(TimeOfDay value) {
    final start = value.quarter();
    state = state.copyWith(startTime: start);

    final end = state.endTime;
    if (end != null && end.isBefore(start)) {
      state = state.copyWith(endTime: start);
    }
  }

  void onEndTimeChanged(TimeOfDay value) {
    final end = value.quarter();
    state = state.copyWith(endTime: end);
    final start = state.startTime;
    if (start != null && start.isAfter(end)) {
      state = state.copyWith(startTime: end);
    }
  }

  void onLunchBreakChanged(bool value) {
    state = state.copyWith(lunchBreak: value);
  }
}
