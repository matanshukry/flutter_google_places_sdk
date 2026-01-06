// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_of_week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimeOfWeek _$TimeOfWeekFromJson(Map json) => _TimeOfWeek(
  day: DayOfWeek.fromJson(json['day'] as String),
  time: PlaceLocalTime.fromJson(Map<String, Object?>.from(json['time'] as Map)),
);

Map<String, dynamic> _$TimeOfWeekToJson(_TimeOfWeek instance) =>
    <String, dynamic>{
      'day': instance.day.toJson(),
      'time': instance.time.toJson(),
    };
