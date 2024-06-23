import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minion_hours_provider.g.dart';

@riverpod
FutureOr<List<MinionHoursOutput>> minionHoursMonth(
  MinionHoursMonthRef ref, {
  required DateTime dt,
}) async {
  return ref.watch(minionHoursRepoProvider).getMonth(dt);
}
