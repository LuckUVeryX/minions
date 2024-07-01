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
created_at,
updated_at,
user_id,
facility_id,
start,
end,
lunch_break,
Facilities(
  id,
  name,
  short_name,
  created_at,
  updated_at
)''';

  Future<List<MinionHoursOutput>> getMonth(DateTime dt) {
    final start = DateTime(dt.year, dt.month)
        .subtract(const Duration(days: DateTime.daysPerWeek));
    final end = DateTime(dt.year, dt.month + 1)
        .add(const Duration(days: DateTime.daysPerWeek));

    return _client
        .from(_table)
        .select(_columns)
        .gte('start', start.toIso8601String())
        .lte('end', end.toIso8601String())
        .withConverter((data) => data.map(MinionHoursOutput.fromJson).toList());
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
