import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

        return values..sort((a, b) => a.period.start.compareTo(b.period.start));
      }),
    );

    final headings = <String>[
      context.l10n.facility,
      context.l10n.date,
      context.l10n.time,
      context.l10n.hours,
      '',
    ];

    if (value.isEmpty) return const Offstage();

    final hasMultipleRows = value.length > 1;

    return ShadTable(
      columnCount: headings.length,
      rowCount: value.length,
      columnSpanExtent: (index) {
        return switch (index) {
          0 => const FixedSpanExtent(80),
          1 => const FixedSpanExtent(64),
          2 => const FixedSpanExtent(88),
          3 => const FixedSpanExtent(60),
          4 => const RemainingSpanExtent(),
          _ => null,
        };
      },
      header: (context, column) {
        return ShadTableCell.header(
          padding: switch (column) {
            0 => const EdgeInsets.only(left: 16),
            _ => EdgeInsets.zero,
          },
          child: Text(headings[column]),
        );
      },
      builder: (context, vicinity) {
        final padding = switch (vicinity.column) {
          0 => const EdgeInsets.only(left: 16),
          _ => EdgeInsets.zero,
        };

        final data = value[vicinity.row];
        if (vicinity.column == headings.length - 1) {
          return ShadTableCell(
            alignment: Alignment.centerRight,
            padding: padding,
            child: MinionHoursEditButton(data: data),
          );
        }
        final tableValues = data.tableValues;
        return ShadTableCell(
          padding: switch (vicinity.column) {
            0 => const EdgeInsets.only(left: 16),
            _ => EdgeInsets.zero,
          },
          child: Text(
            tableValues[vicinity.column],
            style: context.textTheme.p.copyWith(fontSize: 12),
          ),
        );
      },
      footer: !hasMultipleRows
          ? null
          : (context, column) {
              final padding = switch (column) {
                0 => const EdgeInsets.only(left: 16),
                _ => EdgeInsets.zero,
              };
              if (column == 0) {
                return ShadTableCell.footer(
                  padding: padding,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    context.l10n.total,
                    style: context.textTheme.blockquote.copyWith(fontSize: 14),
                  ),
                );
              }

              if (column == headings.length - 2) {
                final total = value.fold(
                  Duration.zero,
                  (prev, e) => prev + e.duration,
                );

                if (total == Duration.zero) {
                  return const ShadTableCell(child: Offstage());
                }

                return ShadTableCell.footer(
                  padding: padding,
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

class MinionHoursEditButton extends HookConsumerWidget {
  const MinionHoursEditButton({
    required this.data,
    super.key,
  });

  final MinionHoursOutput data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useRef(ShadPopoverController());
    return ShadPopover(
      controller: controller.value,
      popover: (context) {
        const width = 100.0;
        return SizedBox(
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ShadButton.outline(
                width: width,
                text: Text(context.l10n.edit),
                onPressed: () async {
                  controller.value.hide();

                  final notifier =
                      ref.read(minionHoursControllerProvider.notifier);
                  final state = await MinionHoursDialog.edit(
                    context,
                    data: data,
                  );
                  if (state == null || !state.isValid()) return;

                  return notifier.edit(data.merge(state));
                },
              ),
              ShadButton.destructive(
                width: width,
                text: Text(context.l10n.delete),
                onPressed: () async {
                  controller.value.hide();

                  final notifier =
                      ref.read(minionHoursControllerProvider.notifier);
                  return notifier.delete(data);
                },
              ),
            ],
          ),
        );
      },
      child: IconButton(
        onPressed: () {
          controller.value.toggle();
        },
        icon: const Icon(LucideIcons.ellipsisVertical),
      ),
    );
  }
}
