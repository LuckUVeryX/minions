import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:minions/features/minion_hours/widgets/organisms/minion_calendar.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: double.infinity),
            MinionCalendar(),
          ],
        ),
      ),
      floatingActionButton: MinonHoursAddButton(),
    );
  }
}
