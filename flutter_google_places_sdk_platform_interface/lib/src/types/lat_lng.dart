import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng.freezed.dart';
part 'lat_lng.g.dart';

/// An immutable class representing a pair of latitude and longitude coordinates, stored as degrees.
///
/// Ref: https://developers.google.com/android/reference/com/google/android/gms/maps/model/LatLng
@Freezed()
class LatLng with _$LatLng {
  /// constructs a [LatLng] object.
  const factory LatLng({
    /// The latitude part of the coordinate,
    required double lat,

    /// the longitude part of the coordinate.
    required double lng,
  }) = _LatLng;

  /// Parse an [LatLng] from json.
  factory LatLng.fromJson(Map<String, Object?> json) => _$LatLngFromJson(json);
}
