import 'dart:collection';

import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'minion_hours_calendar_controller.g.dart';

@riverpod
class MinionHoursCalendarController extends _$MinionHoursCalendarController {
  /// (DateTime, isStale)
  final _cached = LinkedHashMap<DateTime, bool>(
    equals: isSameDay,
    hashCode: _hashCode,
  );

  @override
  LinkedHashMap<DateTime, Set<MinionHoursOutput>> build() {
    for (final e in _cached.entries) {
      _cached[e.key] = true;
    }

    return LinkedHashMap(
      equals: isSameDay,
      hashCode: _hashCode,
    );
  }

  Future<void> loadEvent(DateTime dt) async {
    if (_cached.containsKey(dt) && !(_cached[dt] ?? true)) return;
    _cached[dt] = false;

    final repo = ref.read(minionHoursRepoProvider);
    final minionHours = await repo.getMonth(dt);
    if (minionHours.isEmpty) return;

    final copy = state.toMap();
    for (final element in minionHours) {
      final day = element.start.toDay();
      copy[day] = (copy[day] ?? {})..add(element);
    }
    state = copy;
  }
}

extension on LinkedHashMap<DateTime, Set<MinionHoursOutput>> {
  LinkedHashMap<DateTime, Set<MinionHoursOutput>> toMap() {
    return LinkedHashMap(
      equals: isSameDay,
      hashCode: _hashCode,
    )..addAll(this);
  }
}

extension on DateTime {
  DateTime toDay() {
    return DateTime(year, month, day);
  }
}

int _hashCode(DateTime dt) {
  return dt.day * 1000000 + dt.month * 10000 + dt.year;
}
