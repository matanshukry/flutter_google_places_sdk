import 'package:flutter_google_places_sdk_http/types/details/place_result.dart';
import 'package:flutter_google_places_sdk_http/types/details/place_details_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details_response.freezed.dart';
part 'place_details_response.g.dart';

/// A Place details response returned from PlacesService
@freezed
class PlaceDetailsResponse with _$PlaceDetailsResponse {
  /// Construct a new response object.
  const factory PlaceDetailsResponse({
    /// The place of the response.
    required PlaceResult? result,

    /// The status of the response.
    required PlaceDetailsStatus status,
  }) = _PlaceDetailsResponse;

  /// Parse a [PlaceDetailsResponse] from json data.
  factory PlaceDetailsResponse.fromJson(Map<String, dynamic> json) => _$PlaceDetailsResponseFromJson(json);
}
