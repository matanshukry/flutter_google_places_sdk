import 'package:flutter_google_places_sdk_platform_interface/src/types/lat_lng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng_bounds.freezed.dart';
part 'lat_lng_bounds.g.dart';

/// An immutable class representing a latitude/longitude aligned rectangle.
///
/// Ref: https://developers.google.com/android/reference/com/google/android/gms/maps/model/LatLngBounds.html
@Freezed()
class LatLngBounds with _$LatLngBounds {
  /// constructs a [LatLngBounds] object.
  const factory LatLngBounds({
    /// The southwest coordinate of the bounds.
    required LatLng southwest,

    /// The northeast coordinate of the bounds.
    required LatLng northeast,
  }) = _LatLngBounds;

  /// Parse an [LatLngBounds] from json.
  factory LatLngBounds.fromJson(Map<String, Object?> json) =>
      _$LatLngBoundsFromJson(json);
}

/// An immutable class representing a latitude/longitude aligned circle, with a defined radius.
@Freezed()
class CircularBounds with _$CircularBounds {
  /// constructs a [CircularBounds] object.
  const factory CircularBounds({
    required LatLng center,
    required double radius,
  }) = _CircularBounds;

  /// Parse an [CircularBounds] from json.
  factory CircularBounds.fromJson(Map<String, Object?> json) =>
      _$CircularBoundsFromJson(json);
}
