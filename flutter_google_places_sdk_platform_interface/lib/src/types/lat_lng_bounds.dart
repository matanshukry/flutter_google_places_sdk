import 'package:flutter_google_places_sdk_platform_interface/src/types/lat_lng.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/utils.dart';

/// An immutable class representing a latitude/longitude aligned rectangle.
///
/// Ref: https://developers.google.com/android/reference/com/google/android/gms/maps/model/LatLngBounds.html
class LatLngBounds {
  const LatLngBounds({required this.southwest, required this.northeast});

  final LatLng southwest;
  final LatLng northeast;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LatLngBounds &&
          runtimeType == other.runtimeType &&
          southwest == other.southwest &&
          northeast == other.northeast;

  @override
  int get hashCode => southwest.hashCode ^ northeast.hashCode;

  @override
  String toString() =>
      'LatLngBounds{southwest: $southwest, northeast: $northeast}';

  Map<String, dynamic> toMap() =>
      {'southwest': southwest.toMap(), 'northeast': northeast.toMap()};

  static LatLngBounds? fromMap(Map<String, dynamic>? map) => map == null
      ? null
      : LatLngBounds(
          southwest: LatLng.fromMap(toJsonMap(map['southwest']))!,
          northeast: LatLng.fromMap(toJsonMap(map['northeast']))!,
        );
}
