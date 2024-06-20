import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/facilities/facilities.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MinionHoursDialog extends HookConsumerWidget {
  const MinionHoursDialog._();

  static Future<void> show(BuildContext context) {
    return showShadDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const MinionHoursDialog._(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final facilities = ref.watch(facilitiesProvider);

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
                placeholder: Text(context.l10n.facilitySelectPlaceholder),
                options: data.map(
                  (e) => ShadOption(value: e, child: Text(e.name)),
                ),
                selectedOptionBuilder: (_, value) => Text(value.name),
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
            text: Text(DateFormat.yMd().format(DateTime.now())),
            onPressed: () {
              showDialog<DateTime>(
                context: context,
                builder: (context) => DatePickerDialog(
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now(),
                ),
              );
            },
          ),
          Row(
            children: [
              Expanded(
                child: ShadButton.outline(
                  text: Text(context.l10n.start),
                  onPressed: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                  },
                ),
              ),
              Expanded(
                child: ShadButton.outline(
                  text: Text(context.l10n.end),
                  onPressed: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                  },
                ),
              ),
            ],
          ),
          Spacing.sp4,
          ShadCheckbox(
            value: false,
            onChanged: (value) {},
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
                enabled: false,
                text: Text(context.l10n.save),
                onPressed: context.pop,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
