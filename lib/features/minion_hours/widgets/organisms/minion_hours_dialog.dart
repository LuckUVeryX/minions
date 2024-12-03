import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/facilities/facilities.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MinionHoursDialog extends HookConsumerWidget {
  const MinionHoursDialog._({
    required this.date,
    required this.data,
  });

  final DateTime date;
  final MinionHoursOutput? data;

  static Future<MinionHoursState?> add(
    BuildContext context, {
    required DateTime date,
  }) {
    return showShadDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => MinionHoursDialog._(date: date, data: null),
    );
  }

  static Future<MinionHoursState?> edit(
    BuildContext context, {
    required MinionHoursOutput data,
  }) {
    return showShadDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => MinionHoursDialog._(
        date: data.period.start,
        data: data,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final facilities = ref.watch(facilitiesProvider);
    final input = ref.watch(minionHoursEditControllerProvider);

    useEffect(
      () {
        final notifier = ref.read(minionHoursEditControllerProvider.notifier);
        Future(() => notifier.onDateChanged(data?.period.start ?? date));
        if (data != null) {
          Future(() => notifier.onChanged(data!));
        }
        return null;
      },
      [],
    );

    return ShadDialog(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * 0.8,
      ),
      crossAxisAlignment: CrossAxisAlignment.start,
      title: Text(
        data == null
            ? context.l10n.addMinionHours
            : context.l10n.editMinionHours,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          facilities.maybeWhen(
            orElse: () => const SizedBox(
              width: double.infinity,
              height: 46,
            ),
            data: (data) => SizedBox(
              width: double.infinity,
              child: ShadSelect<Facility>(
                initialValue: input.facility,
                placeholder: Text(context.l10n.facilitySelectPlaceholder),
                options: data.map(
                  (e) => ShadOption(value: e, child: Text(e.name)),
                ),
                selectedOptionBuilder: (_, value) => Text(value.name),
                onChanged: (value) {
                  ref
                      .read(minionHoursEditControllerProvider.notifier)
                      .onFacilityChanged(value);
                },
              ),
            ),
          ),
          ShadButton.outline(
            width: double.infinity,
            icon: const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(LucideIcons.calendar),
            ),
            mainAxisAlignment: MainAxisAlignment.start,
            child: Text(DateFormat.yMd().format(input.date ?? DateTime.now())),
            onPressed: () async {
              final notifier =
                  ref.read(minionHoursEditControllerProvider.notifier);

              final now = DateTime.now();
              final date = await showDatePicker(
                context: context,
                initialDate: input.date ?? now,
                firstDate: now.subtract(const Duration(days: 365)),
                lastDate: now.add(const Duration(days: 365)),
              );
              if (date == null) return;

              notifier.onDateChanged(date);
            },
          ),
          Row(
            children: [
              Expanded(
                child: ShadButton.outline(
                  child: Text(
                    input.startTime?.format(context) ?? context.l10n.start,
                  ),
                  onPressed: () async {
                    final notifier =
                        ref.read(minionHoursEditControllerProvider.notifier);
                    final start = await showTimePicker(
                      context: context,
                      initialTime: input.startTime ?? TimeOfDay.now(),
                    );
                    if (start == null) return;
                    notifier.onStartTimeChanged(start);

                    if (!context.mounted) return;
                    if (input.endTime != null) return;

                    final end = await showTimePicker(
                      context: context,
                      initialTime: start,
                    );
                    if (end == null) return;
                    notifier.onEndTimeChanged(end);
                  },
                ),
              ),
              Expanded(
                child: ShadButton.outline(
                  child:
                      Text(input.endTime?.format(context) ?? context.l10n.end),
                  onPressed: () async {
                    final notifier =
                        ref.read(minionHoursEditControllerProvider.notifier);
                    final time = await showTimePicker(
                      context: context,
                      initialTime:
                          input.endTime ?? input.startTime ?? TimeOfDay.now(),
                    );
                    if (time == null) return;
                    notifier.onEndTimeChanged(time);
                  },
                ),
              ),
            ],
          ),
          Spacing.sp4,
          ShadCheckbox(
            value: input.lunchBreak,
            onChanged: (value) {
              ref
                  .read(minionHoursEditControllerProvider.notifier)
                  .onLunchBreakChanged(value);
            },
            label: Text(context.l10n.lunchBreak),
            sublabel: Text(context.l10n.lunchBreakDesc),
          ),
          Spacing.sp8,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ShadButton.outline(
                onPressed: context.pop,
                child: Text(context.l10n.cancel),
              ),
              ShadButton(
                enabled: input.isValid(),
                child: Text(context.l10n.save),
                onPressed: () => context.pop(input),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
