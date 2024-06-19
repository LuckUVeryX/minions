import 'package:minions/app/app.dart';
import 'package:minions/features/facilities/facilities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'facility_repo.g.dart';

@riverpod
FacilityRepo facilityRepo(FacilityRepoRef ref) {
  return FacilityRepo(ref.watch(supabaseProvider));
}

class FacilityRepo {
  const FacilityRepo(this._client);

  final SupabaseClient _client;

  Future<List<Facility>> getFacilities() async {
    final response = await _client.from('Facilities').select();
    return response.map(Facility.fromJson).toList();
  }
}
