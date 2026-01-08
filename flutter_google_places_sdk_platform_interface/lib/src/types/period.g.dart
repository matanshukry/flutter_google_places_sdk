// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Period _$PeriodFromJson(Map json) => _Period(
  open: TimeOfWeek.fromJson(Map<String, Object?>.from(json['open'] as Map)),
  close: json['close'] == null
      ? null
      : TimeOfWeek.fromJson(Map<String, Object?>.from(json['close'] as Map)),
);

Map<String, dynamic> _$PeriodToJson(_Period instance) => <String, dynamic>{
  'open': instance.open.toJson(),
  'close': instance.close?.toJson(),
};
