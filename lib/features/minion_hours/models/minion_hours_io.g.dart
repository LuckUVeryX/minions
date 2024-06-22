// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minion_hours_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MinionHoursInputImpl _$$MinionHoursInputImplFromJson(
        Map<String, dynamic> json) =>
    _$MinionHoursInputImpl(
      userId: json['user_id'] as String,
      facilityId: json['facility_id'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      lunchBreak: json['lunch_break'] as bool,
    );

Map<String, dynamic> _$$MinionHoursInputImplToJson(
        _$MinionHoursInputImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'facility_id': instance.facilityId,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'lunch_break': instance.lunchBreak,
    };

_$MinionHoursOutputImpl _$$MinionHoursOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$MinionHoursOutputImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as String,
      facilityId: json['facility_id'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      lunchBreak: json['lunch_break'] as bool,
    );

Map<String, dynamic> _$$MinionHoursOutputImplToJson(
        _$MinionHoursOutputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_id': instance.userId,
      'facility_id': instance.facilityId,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'lunch_break': instance.lunchBreak,
    };
