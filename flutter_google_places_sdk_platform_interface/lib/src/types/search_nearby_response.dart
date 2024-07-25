import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_nearby_response.freezed.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.searchNearby] request
@Freezed()
class SearchNearbyResponse with _$SearchNearbyResponse {
  /// constructs a [SearchNearbyResponse] object.
  const factory SearchNearbyResponse(
    /// the Place list returned by the response.
    List<Place> places,
  ) = _SearchNearbyResponse;
}
