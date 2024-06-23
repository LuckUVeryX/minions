import 'package:minions/app/app.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minion_hours_provider.g.dart';

@riverpod
FutureOr<List<MinionHoursOutput>> minionHours(
  MinionHoursRef ref, {
  required DateTime start,
  required DateTime end,
}) async {
  final result = await ref
      .watch(minionHoursRepoProvider)
      .getDateRange(start: start, end: end);

  ref.cache();
  return result;
}
