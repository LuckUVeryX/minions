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

  static const _columns = '''
id,
user_id,
facility_id,
period,
lunch_break,
created_at,
updated_at,
Facilities(
  id,
  name,
  short_name,
  created_at,
  updated_at
)''';

  Future<List<MinionHoursOutput>> getRange(DateTime start, DateTime end) {
    return _client.from(_table).select(_columns).withConverter((data) {
      return data.map(MinionHoursOutput.fromJson).toList();
    });
  }

  Future<void> insert(MinionHoursInput value) {
    return _client.from(_table).insert(value.toJson());
  }

  Future<void> update(MinionHoursOutput value) {
    return _client
        .from(_table)
        .update(value.toJson()..remove('Facilities'))
        .eq('id', value.id);
  }

  Future<void> delete(int id) {
    return _client.from(_table).delete().eq('id', id);
  }
}
