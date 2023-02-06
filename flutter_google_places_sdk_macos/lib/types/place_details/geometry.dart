import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  factory Geometry({
    LatLng? location,
    LatLngBounds? viewport,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class LatLng with _$LatLng {
  factory LatLng({
    required double lat,
    required double lng,
  }) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}

@freezed
class LatLngBounds with _$LatLngBounds {
  factory LatLngBounds({
    required LatLng southwest,
    required LatLng northeast,
  }) = _LatLngBounds;

  factory LatLngBounds.fromJson(Map<String, dynamic> json) =>
      _$LatLngBoundsFromJson(json);
}
