import 'package:flutter_google_places_sdk_platform_interface/src/types/lat_lng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circular_bounds.freezed.dart';
part 'circular_bounds.g.dart';

/// An immutable class representing a latitude/longitude aligned circle, with a defined radius.
@Freezed()
sealed class CircularBounds with _$CircularBounds {
  /// constructs a [CircularBounds] object.
  const factory CircularBounds({
    required LatLng center,
    required double radius,
  }) = _CircularBounds;

  /// Parse an [CircularBounds] from json.
  factory CircularBounds.fromJson(Map<String, Object?> json) =>
      _$CircularBoundsFromJson(json);
}
