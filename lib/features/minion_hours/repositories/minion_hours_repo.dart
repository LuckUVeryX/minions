import 'package:minions/app/app.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'minion_hours_repo.g.dart';

@riverpod
MinionHoursRepo minionHoursRepo(MinionHoursRepoRef ref) {
  return MinionHoursRepo(ref.watch(supabaseProvider));
}

class MinionHoursRepo {
  const MinionHoursRepo(this._client);

  final SupabaseClient _client;

  static const _table = 'MinionHours';

  Future<void> insert(MinionHoursInput value) {
    return _client.from(_table).insert(value.toJson());
  }

  Future<void> update(MinionHoursOutput value) {
    return _client.from(_table).update(value.toJson()).eq('id', value.id);
  }

  Future<void> delete(String id) {
    return _client.from(_table).delete().eq('id', id);
  }
}
