import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/features/facilities/facilities.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(facilitiesProvider, (_, __) {
      // Load Facilities
    });

    // useEffect(
    //   () {
    //     Supabase.instance.client.auth.signOut();
    //     return null;
    //   },
    //   [],
    // );

    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: double.infinity),
            MinionCalendar(),
            Expanded(child: MinionHoursTable()),
          ],
        ),
      ),
      floatingActionButton: MinonHoursAddButton(),
    );
  }
}
