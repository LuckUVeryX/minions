import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minions/features/facilities/facilities.dart';

part 'minion_hours_input.freezed.dart';
part 'minion_hours_input.g.dart';

@freezed
class MinionHoursInput with _$MinionHoursInput {
  const factory MinionHoursInput({
    Facility? facility,
    DateTime? start,
    DateTime? end,
  }) = _MinionHoursInput;

  const MinionHoursInput._();

  factory MinionHoursInput.fromJson(Map<String, dynamic> json) =>
      _$MinionHoursInputFromJson(json);
}
