import 'package:minions/features/facilities/facilities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'facilities_provider.g.dart';

@riverpod
FutureOr<List<Facility>> facilities(FacilitiesRef ref) {
  return ref.watch(facilityRepoProvider).getFacilities();
}
