import 'package:flutter_google_places_sdk_macos/types/place_details/place.dart';
import 'package:flutter_google_places_sdk_macos/types/types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details_response.freezed.dart';
part 'place_details_response.g.dart';

@freezed
class PlaceDetailsResponse with _$PlaceDetailsResponse {
  factory PlaceDetailsResponse({
    /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
    required PlacesAutocompleteStatus status,

    /// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
    @JsonKey(name: 'error_message') String? errorMessage,
    required Place result,
  }) = _PlaceDetailsResponse;

  factory PlaceDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResponseFromJson(json);
}
