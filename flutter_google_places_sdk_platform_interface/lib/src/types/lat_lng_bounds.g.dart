// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lng_bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatLngBounds _$LatLngBoundsFromJson(Map json) => _LatLngBounds(
  southwest: LatLng.fromJson(
    Map<String, Object?>.from(json['southwest'] as Map),
  ),
  northeast: LatLng.fromJson(
    Map<String, Object?>.from(json['northeast'] as Map),
  ),
);

Map<String, dynamic> _$LatLngBoundsToJson(_LatLngBounds instance) =>
    <String, dynamic>{
      'southwest': instance.southwest.toJson(),
      'northeast': instance.northeast.toJson(),
    };
