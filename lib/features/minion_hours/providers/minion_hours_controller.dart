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

  void onStartChanged(DateTime value) {
    state = state.copyWith(start: value);
  }

  void onEndChanged(DateTime value) {
    state = state.copyWith(end: value);
  }
}
