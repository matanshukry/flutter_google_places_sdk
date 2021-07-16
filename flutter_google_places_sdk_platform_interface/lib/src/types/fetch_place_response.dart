import 'package:flutter_google_places_sdk_platform_interface/src/types/place.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.fetchPlace] request
class FetchPlaceResponse {
  const FetchPlaceResponse(this.place);

  /// the Place returned by the response.
  final Place? place;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchPlaceResponse &&
          runtimeType == other.runtimeType &&
          place == other.place;

  @override
  int get hashCode => place.hashCode;

  @override
  String toString() => 'FetchPlaceResponse{place: $place}';
}
