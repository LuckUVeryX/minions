import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:table_calendar/table_calendar.dart';

class MinionCalendar extends HookConsumerWidget {
  const MinionCalendar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusedDay = useState(DateTime.now().firstDayOfMonth());
    final dateSelection = ref.watch(minionHoursDateRangeControllerProvider);
    final (selectedDay, (rangeStartDay, rangeEndDay)) = dateSelection;
    final rangeSelectionMode = switch (dateSelection) {
      (final _?, (null, null)) => RangeSelectionMode.toggledOff,
      (null, (_, _)) => RangeSelectionMode.toggledOn,
      _ => throw UnsupportedError('Invalid date range state'),
    };

    final events = ref.watch(minionHoursCalendarControllerProvider);

    Future<void> loadEvent() async {
      final notifier = ref.read(minionHoursCalendarControllerProvider.notifier);
      return notifier.loadEvent(focusedDay.value);
    }

    ref.listen(minionHoursCalendarControllerProvider, (_, __) => loadEvent());

    useEffect(
      () {
        loadEvent.call();
        return null;
      },
      [],
    );
    final defaultTextStyle = context.textTheme.small;
    final defaultDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    );

    return ShadDecorator(
      decoration: ShadDecoration(
        border: ShadBorder(
          color: context.colorScheme.border,
          radius: BorderRadius.circular(8),
        ),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: TableCalendar<MinionHoursOutput>(
          locale: 'en_SG',
          firstDay: DateTime(2023),
          lastDay: DateTime.now().add(const Duration(days: 365)),
          availableCalendarFormats: const {CalendarFormat.month: 'Month'},
          headerStyle: const HeaderStyle(
            titleCentered: true,
            leftChevronIcon: Icon(LucideIcons.chevronLeft),
            rightChevronIcon: Icon(LucideIcons.chevronRight),
          ),
          calendarStyle: CalendarStyle(
            defaultTextStyle: defaultTextStyle,
            defaultDecoration: defaultDecoration,
            weekendTextStyle: defaultTextStyle,
            weekendDecoration: defaultDecoration,
            outsideDecoration: defaultDecoration,
            outsideTextStyle: defaultTextStyle.copyWith(
              color: context.colorScheme.foreground.withOpacity(0.3),
            ),
            todayDecoration: defaultDecoration.copyWith(
              color: context.colorScheme.secondary,
            ),
            todayTextStyle: defaultTextStyle,
            cellMargin: const EdgeInsets.symmetric(horizontal: 4),
            selectedDecoration: defaultDecoration.copyWith(
              color: context.colorScheme.foreground,
            ),
            selectedTextStyle: defaultTextStyle.copyWith(
              color: context.colorScheme.background,
            ),
            rangeStartDecoration: defaultDecoration.copyWith(
              color: context.colorScheme.selection,
            ),
            rangeEndDecoration: defaultDecoration.copyWith(
              color: context.colorScheme.selection,
            ),
            withinRangeDecoration: defaultDecoration,
            rangeHighlightColor: context.colorScheme.selection.withOpacity(0.5),
            rangeStartTextStyle: defaultTextStyle.copyWith(
              color: context.colorScheme.background,
            ),
            rangeEndTextStyle: defaultTextStyle.copyWith(
              color: context.colorScheme.background,
            ),
          ),
          calendarBuilders: CalendarBuilders(
            markerBuilder: (_, day, events) => MinionCalendarMarker(
              events: events,
              color: isSameDay(day, selectedDay)
                  ? context.colorScheme.background
                  : context.colorScheme.foreground,
            ),
          ),
          rangeStartDay: rangeStartDay,
          rangeEndDay: rangeEndDay,
          rangeSelectionMode: rangeSelectionMode,
          selectedDayPredicate: (day) => isSameDay(selectedDay, day),
          focusedDay: focusedDay.value,
          onPageChanged: (day) async {
            focusedDay.value = day;
            final notifier = ref.read(
              minionHoursCalendarControllerProvider.notifier,
            );
            return notifier.loadEvent(focusedDay.value);
          },
          onDaySelected: (selectDay, focusDay) {
            if (isSameDay(selectedDay, selectDay)) return;

            focusedDay.value = focusDay;

            final notifier = ref.read(
              minionHoursDateRangeControllerProvider.notifier,
            );
            return notifier.onDateChanged(selectDay);
          },
          onRangeSelected: (start, end, focusDay) {
            focusedDay.value = focusDay;
            final notifier = ref.read(
              minionHoursDateRangeControllerProvider.notifier,
            );
            return notifier.onRangeChanged(
              (start, end?.dayEnd()),
            );
          },
          onHeaderLongPressed: (_) {
            // Return back to current day
            focusedDay.value = DateTime.now();
          },
          eventLoader: (day) => (events[day] ?? {}).toList(),
        ),
      ),
    );
  }
}
