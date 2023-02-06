import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_autocomplete_prediction.dart';
import 'places_autocomplete_status.dart';

part 'places_autocomplete_response.freezed.dart';
part 'places_autocomplete_response.g.dart';

/// Response return from an api call to google places sdk.
@freezed
class PlacesAutocompleteResponse with _$PlacesAutocompleteResponse {
  /// Construct a new response object.
  const factory PlacesAutocompleteResponse({
    /// Contains an array of predictions.
    required List<PlaceAutocompletePrediction> predictions,

    /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
    required PlacesAutocompleteStatus status,

    /// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
    required String? error_message,

    /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
    required List<String>? info_messages,
  }) = _PlacesAutocompleteResponse;

  /// Parse a [PlacesAutocompleteResponse] from json data.
  factory PlacesAutocompleteResponse.fromJson(Map<String, Object?> json) =>
      _$PlacesAutocompleteResponseFromJson(json);
}
