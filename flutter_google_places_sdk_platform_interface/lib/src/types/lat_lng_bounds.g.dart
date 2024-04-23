// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lng_bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatLngBoundsImpl _$$LatLngBoundsImplFromJson(Map json) => _$LatLngBoundsImpl(
      southwest:
          LatLng.fromJson(Map<String, Object?>.from(json['southwest'] as Map)),
      northeast:
          LatLng.fromJson(Map<String, Object?>.from(json['northeast'] as Map)),
    );

Map<String, dynamic> _$$LatLngBoundsImplToJson(_$LatLngBoundsImpl instance) =>
    <String, dynamic>{
      'southwest': instance.southwest.toJson(),
      'northeast': instance.northeast.toJson(),
    };
