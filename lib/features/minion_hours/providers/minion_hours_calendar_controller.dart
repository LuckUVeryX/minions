import 'dart:collection';

import 'package:minions/app/app.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'minion_hours_calendar_controller.g.dart';

typedef CalendarHashMap = LinkedHashMap<DateTime, Set<MinionHoursOutput>>;

@riverpod
class MinionHoursCalendarController extends _$MinionHoursCalendarController {
  final _cached = LinkedHashSet<DateTime>(
    equals: isSameDay,
    hashCode: _hashCode,
  );

  @override
  CalendarHashMap build() {
    return LinkedHashMap(
      equals: isSameDay,
      hashCode: _hashCode,
    );
  }

  Future<void> loadEvent(DateTime dt, {bool force = false}) async {
    final monthDate = dt.firstDayOfMonth();

    if (force) return _loadEvent(monthDate);

    if (_cached.contains(monthDate)) return;
    return _loadEvent(monthDate);
  }

  Future<void> _loadEvent(DateTime dt) async {
    _cached.add(dt);

    final repo = ref.read(minionHoursRepoProvider);
    final start = dt.subtract(const Duration(days: DateTime.daysPerWeek));
    final end = DateTime(dt.year, dt.month + 1, dt.day)
        .add(const Duration(days: DateTime.daysPerWeek));
    final minionHours = await repo.getRange(start, end);

    final copy = state.copy();

    var currentDay = start;
    while (currentDay.isBefore(end) || currentDay.isAtSameMomentAs(end)) {
      copy[currentDay] = {};
      currentDay = currentDay.add(const Duration(days: 1));
    }

    for (final element in minionHours) {
      final day = element.period.start.toDay();
      copy[day] = (copy[day] ?? {})..add(element);
    }
    state = copy;
  }
}

int _hashCode(DateTime dt) {
  return dt.day * 1000000 + dt.month * 10000 + dt.year;
}

extension on CalendarHashMap {
  CalendarHashMap copy() {
    final copy = CalendarHashMap(
      equals: isSameDay,
      hashCode: _hashCode,
    );
    forEach((k, v) => copy[k] = v);
    return copy;
  }
}
