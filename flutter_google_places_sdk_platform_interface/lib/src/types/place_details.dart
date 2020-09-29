import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';

class PlaceDetails {
  const PlaceDetails({
    this.location,
  });

  /// The place location
  final Location location;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceDetails &&
          runtimeType == other.runtimeType &&
          location == other.location;

  @override
  int get hashCode =>
      location.hashCode;

  @override
  String toString() {
    return 'PlaceDetails{location: $location';
  }

  Map<String, dynamic> toMap() => {
        'location': location.toMap(),
      };

  static PlaceDetails fromMap(Map<String, dynamic> map) =>
      PlaceDetails(
        location: Location.fromMap(
          Map<String, dynamic>.from(map['location'])
        ),
      );
}
