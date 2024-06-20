import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/facilities/facilities.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MinionHoursDialog extends HookConsumerWidget {
  const MinionHoursDialog._();

  static Future<MinionHoursInput?> show(BuildContext context) {
    return showShadDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const MinionHoursDialog._(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final facilities = ref.watch(facilitiesProvider);
    final input = ref.watch(minionHoursControllerProvider);

    useEffect(
      () {
        () async {
          ref
              .read(minionHoursControllerProvider.notifier)
              .onDateChanged(DateTime.now());
        }.call();
        return null;
      },
      [],
    );

    return ShadDialog(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * 0.8,
      ),
      crossAxisAlignment: CrossAxisAlignment.start,
      title: Text(context.l10n.minionHours),
      content: Column(
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
                      .read(minionHoursControllerProvider.notifier)
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
            text: Text(DateFormat.yMd().format(input.date ?? DateTime.now())),
            onPressed: () async {
              final notifier = ref.read(minionHoursControllerProvider.notifier);

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
                  text: Text(
                    input.startTime?.format(context) ?? context.l10n.start,
                  ),
                  onPressed: () async {
                    final notifier =
                        ref.read(minionHoursControllerProvider.notifier);
                    final time = await showTimePicker(
                      context: context,
                      initialTime: input.startTime ?? TimeOfDay.now(),
                    );
                    if (time == null) return;
                    notifier.onStartTimeChanged(time);
                  },
                ),
              ),
              Expanded(
                child: ShadButton.outline(
                  text:
                      Text(input.endTime?.format(context) ?? context.l10n.end),
                  onPressed: () async {
                    final notifier =
                        ref.read(minionHoursControllerProvider.notifier);
                    final time = await showTimePicker(
                      context: context,
                      initialTime: input.endTime ?? TimeOfDay.now(),
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
                  .read(minionHoursControllerProvider.notifier)
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
                text: Text(context.l10n.cancel),
                onPressed: context.pop,
              ),
              ShadButton(
                enabled: input.isValid(),
                text: Text(context.l10n.save),
                onPressed: () => context.pop(input),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
