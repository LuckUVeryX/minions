import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility.freezed.dart';
part 'facility.g.dart';

@freezed
class Facility with _$Facility {
  const factory Facility({
    required String id,
    required String name,
    required String shortName,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Facility;

  const Facility._();

  factory Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);
}
