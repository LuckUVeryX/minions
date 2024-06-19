// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minion_hours_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MinionHoursInputImpl _$$MinionHoursInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MinionHoursInputImpl(
      facility: json['facility'] == null
          ? null
          : Facility.fromJson(json['facility'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$MinionHoursInputImplToJson(
        _$MinionHoursInputImpl instance) =>
    <String, dynamic>{
      'facility': instance.facility,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };
