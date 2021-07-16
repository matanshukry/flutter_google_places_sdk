/// An immutable class representing a pair of latitude and longitude coordinates, stored as degrees.
///
/// Ref: https://developers.google.com/android/reference/com/google/android/gms/maps/model/LatLng
class LatLng {
  const LatLng({required this.lat, required this.lng});

  final double lat;
  final double lng;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LatLng &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  @override
  String toString() => 'LatLng{lat: $lat, lng: $lng}';

  Map<String, dynamic> toMap() => {'lat': lat, 'lng': lng};

  static LatLng? fromMap(Map<String, dynamic>? map) => map == null
      ? null
      : LatLng(
          lat: map['lat'],
          lng: map['lng'],
        );
}
