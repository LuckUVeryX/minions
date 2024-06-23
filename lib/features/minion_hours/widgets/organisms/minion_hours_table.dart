import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MinionHoursTable extends HookConsumerWidget {
  const MinionHoursTable({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateSelection = ref.watch(minionHoursDateRangeControllerProvider);

    final value = ref.watch(
      minionHoursCalendarControllerProvider.select((data) {
        final dates = switch (dateSelection) {
          (final date?, (null, null)) => [date],
          (null, (final start?, final end?)) => List.generate(
              end.difference(start).inDays + 1,
              (index) => start.add(Duration(days: index)),
            ),
          _ => <DateTime>[],
        };
        final values = <MinionHoursOutput>[];
        for (final date in dates) {
          final e = data[date];
          if (e != null) values.addAll(e);
        }

        return values..sort((a, b) => a.start.compareTo(b.start));
      }),
    );

    final headings = <String>[
      context.l10n.facility,
      context.l10n.date,
      context.l10n.time,
      context.l10n.hours,
    ];

    final hasMultipleRows = value.length > 1;

    return ShadTable(
      columnCount: headings.length,
      rowCount: value.length,
      columnSpanExtent: (index) {
        return switch (index) {
          0 => const FixedSpanExtent(92),
          1 => const FixedSpanExtent(100),
          2 => const FixedSpanExtent(120),
          3 => const RemainingSpanExtent(),
          _ => null,
        };
      },
      header: (context, column) {
        final isLast = column == headings.length - 1;
        return ShadTableCell.header(
          alignment: isLast ? Alignment.centerRight : null,
          child: Text(headings[column]),
        );
      },
      builder: (context, vicinity) {
        final tableValues = value[vicinity.row].tableValues;
        return ShadTableCell(
          alignment: vicinity.column == tableValues.length - 1
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text(
            tableValues[vicinity.column],
            style: context.textTheme.p.copyWith(fontSize: 12),
          ),
        );
      },
      footer: !hasMultipleRows
          ? null
          : (context, column) {
              if (column == 0) {
                return ShadTableCell.footer(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    context.l10n.total,
                    style: context.textTheme.blockquote.copyWith(fontSize: 14),
                  ),
                );
              }

              if (column == headings.length - 1) {
                final total = value.fold(
                  Duration.zero,
                  (prev, e) => prev + e.duration,
                );

                if (total == Duration.zero) {
                  return const ShadTableCell(child: Offstage());
                }

                return ShadTableCell.footer(
                  alignment: Alignment.centerRight,
                  child: Text(
                    total.toHm(),
                    style: context.textTheme.blockquote.copyWith(fontSize: 14),
                  ),
                );
              }
              return const ShadTableCell(child: Offstage());
            },
    );
  }
}
