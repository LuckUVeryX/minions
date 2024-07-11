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
      period: const _MinionHoursPeriodConverter()
          .fromJson(json['period'] as String),
      lunchBreak: json['lunch_break'] as bool,
    );

Map<String, dynamic> _$$MinionHoursInputImplToJson(
        _$MinionHoursInputImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'facility_id': instance.facilityId,
      'period': const _MinionHoursPeriodConverter().toJson(instance.period),
      'lunch_break': instance.lunchBreak,
    };

_$MinionHoursOutputImpl _$$MinionHoursOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$MinionHoursOutputImpl(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String,
      facilityId: json['facility_id'] as String,
      lunchBreak: json['lunch_break'] as bool,
      period: const _MinionHoursPeriodConverter()
          .fromJson(json['period'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      facility: Facility.fromJson(json['Facilities'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MinionHoursOutputImplToJson(
        _$MinionHoursOutputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'facility_id': instance.facilityId,
      'lunch_break': instance.lunchBreak,
      'period': const _MinionHoursPeriodConverter().toJson(instance.period),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'Facilities': instance.facility.toJson(),
    };

_$MinionHoursPeriodImpl _$$MinionHoursPeriodImplFromJson(
        Map<String, dynamic> json) =>
    _$MinionHoursPeriodImpl(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$MinionHoursPeriodImplToJson(
        _$MinionHoursPeriodImpl instance) =>
    <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
