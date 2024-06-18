import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/utils/utils.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:table_calendar/table_calendar.dart';

class MinionCalendar extends HookConsumerWidget {
  const MinionCalendar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusedDay = useState(DateTime.now().firstDayOfMonth());

    final defaultTextStyle = context.textTheme.small;
    final defaultDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    );

    return ShadDecorator(
      decoration: const ShadDecoration(
        border: ShadBorder(),
      ),
      child: TableCalendar<void>(
        locale: 'en_SG',
        firstDay: DateTime(2023),
        lastDay: DateTime.now().add(const Duration(days: 365)),
        focusedDay: focusedDay.value,
        availableCalendarFormats: const {CalendarFormat.month: 'Month'},
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
        ),
      ),
    );
  }
}

extension on DateTime {
  DateTime firstDayOfMonth() {
    return DateTime(year, month);
  }
}
