// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodImpl _$$PeriodImplFromJson(Map json) => _$PeriodImpl(
      open: TimeOfWeek.fromJson(Map<String, Object?>.from(json['open'] as Map)),
      close: json['close'] == null
          ? null
          : TimeOfWeek.fromJson(
              Map<String, Object?>.from(json['close'] as Map)),
    );

Map<String, dynamic> _$$PeriodImplToJson(_$PeriodImpl instance) =>
    <String, dynamic>{
      'open': instance.open.toJson(),
      'close': instance.close?.toJson(),
    };
