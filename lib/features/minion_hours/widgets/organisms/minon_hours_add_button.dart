import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:minions/features/user/user.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MinonHoursAddButton extends HookConsumerWidget {
  const MinonHoursAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenError(minionHoursControllerProvider);

    return FloatingActionButton(
      child: const Icon(LucideIcons.plus),
      onPressed: () async {
        final notifier = ref.read(minionHoursControllerProvider.notifier);

        final state = await MinionHoursDialog.show(context);
        if (state == null || !state.isValid()) return;

        final user = ref.read(userProvider);
        final input = MinionHoursInput.fromState(state: state, userId: user.id);
        return notifier.insert(input);
      },
    );
  }
}
