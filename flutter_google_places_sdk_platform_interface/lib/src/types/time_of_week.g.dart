// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_of_week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeOfWeekImpl _$$TimeOfWeekImplFromJson(Map json) => _$TimeOfWeekImpl(
      day: DayOfWeek.fromJson(json['day'] as String),
      time: PlaceLocalTime.fromJson(
          Map<String, Object?>.from(json['time'] as Map)),
    );

Map<String, dynamic> _$$TimeOfWeekImplToJson(_$TimeOfWeekImpl instance) =>
    <String, dynamic>{
      'day': instance.day.toJson(),
      'time': instance.time.toJson(),
    };
