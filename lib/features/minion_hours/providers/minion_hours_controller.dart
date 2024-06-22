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
  }

  Future<void> edit(MinionHoursOutput output) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(minionHoursRepoProvider);
      return repo.update(output);
    });
  }

  Future<void> delete(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(minionHoursRepoProvider);
      return repo.delete(id);
    });
  }
}
