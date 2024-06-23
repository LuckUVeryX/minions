import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minion_hours_controller.g.dart';

@riverpod
class MinionHoursController extends _$MinionHoursController {
  @override
  FutureOr<void> build() {}

  Future<void> insert(MinionHoursInput input) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(minionHoursRepoProvider);
      return repo.insert(input);
    });

    return ref
        .read(minionHoursCalendarControllerProvider.notifier)
        .loadEvent(input.start, force: true);
  }

  Future<void> edit(MinionHoursOutput output) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(minionHoursRepoProvider);
      return repo.update(output);
    });

    return ref
        .read(minionHoursCalendarControllerProvider.notifier)
        .loadEvent(output.start, force: true);
  }

  Future<void> delete(MinionHoursOutput output) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(minionHoursRepoProvider);
      return repo.delete(output.id);
    });

    return ref
        .read(minionHoursCalendarControllerProvider.notifier)
        .loadEvent(output.start, force: true);
  }
}
