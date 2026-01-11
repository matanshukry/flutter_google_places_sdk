// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circular_bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CircularBounds _$CircularBoundsFromJson(Map json) => _CircularBounds(
  center: LatLng.fromJson(Map<String, Object?>.from(json['center'] as Map)),
  radius: (json['radius'] as num).toDouble(),
);

Map<String, dynamic> _$CircularBoundsToJson(_CircularBounds instance) =>
    <String, dynamic>{
      'center': instance.center.toJson(),
      'radius': instance.radius,
    };
